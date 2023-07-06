#!/usr/bin/env python3

# Installation:
#   ln -s ~/git/my_prefs/stamp.py ~/bin/stamp
import argparse
from datetime import datetime


def stamp(val):
    ts = int(val)

    # https://stackoverflow.com/questions/3682748/converting-unix-timestamp-string-to-readable-date
    # if you encounter a "year is out of range" error the timestamp
    # may be in milliseconds, try `ts /= 1000` in that case
    try:
        res = datetime.utcfromtimestamp(ts).strftime('%Y-%m-%d %H:%M:%S')
    except Exception as _exc:
        ts = int(val)/1000
        res = datetime.utcfromtimestamp(ts).strftime('%Y-%m-%d %H:%M:%S')

    return res


def main():
    parser = argparse.ArgumentParser(description='Convert a timestamp to YMD')
    parser.add_argument('stamp', type=int, help='a unix timestamp')

    args = parser.parse_args()
    res = stamp(args.stamp)
    print(f"{res}")


if __name__ == '__main__':
    main()



