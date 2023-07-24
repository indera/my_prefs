#!/usr/bin/env python3

# Installation:
#   ln -s ~/git/my_prefs/stamp.py ~/bin/stamp
import argparse
import time
from datetime import datetime


DATE_FORMAT = '%Y-%m-%d %H:%M:%S'


def stamp(val):
    if not val.isnumeric():
        dt = datetime.strptime(val, DATE_FORMAT)
        res = time.mktime(dt.timetuple())
        return res

    ts = int(val)

    # https://stackoverflow.com/questions/3682748/converting-unix-timestamp-string-to-readable-date
    # if you encounter a "year is out of range" error the timestamp
    # may be in milliseconds, try `ts /= 1000` in that case

    try:
        res = datetime.utcfromtimestamp(ts).strftime(DATE_FORMAT)
    except Exception:
        ts = int(val)/1000
        res = datetime.utcfromtimestamp(ts).strftime(DATE_FORMAT)

    return res


def main():
    parser = argparse.ArgumentParser(description='Convert a timestamp to YMD')
    # parser.add_argument('stamp', type=int, help='a unix timestamp')
    parser.add_argument('stamp', help='a unix timestamp or a `datetime`')

    args = parser.parse_args()
    res = stamp(args.stamp)
    print(f"{res}")


if __name__ == '__main__':
    main()

