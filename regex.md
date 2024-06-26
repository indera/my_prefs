# Text after word

```
cat traef_3days  | grep auth-keycloak | grep -oP "DownstreamStatus\K.*" | cut -d , -f1,18 | less
```

# Text between 2 words

See https://stackoverflow.com/questions/13242469/how-to-use-sed-grep-to-extract-text-between-two-words

```
cat traefik_log | sed -e 's/.*RequestPath\(.*\)RequestPort.*/\1/'
```


# N-th occurence after word

```
echo "a word1 b word1 c word1 d" | grep -oP '^(?:.*?word1){0}\K.*?(?=word1)'
a

echo "a word1 b word1 c word1 d" | grep -oP '^(?:.*?word1){1}\K.*?(?=word1)'
b

echo "a word1 b word1 c word1 d" | grep -oP '^(?:.*?word1){2}\K.*?(?=word1)'
c
```

# Explanation

grep -oP:
    -o option tells grep to only output the matched parts of the line, and -P enables Perl-compatible regular expressions.

^(?:.*?word1){2}\K.*?(?=word1): This is the regular expression used by grep:

- ^: Anchors the match to the beginning of the line.

- (?:.*?word1){2}: Matches any characters followed by "word1", twice. (?: ... )
  is a non-capturing group, and .*? matches any characters (non-greedy) until
  "word1".

- \K: Resets the match start, discarding everything matched so far from the
  match output.

- .*?(?=word1): Matches any characters (non-greedy) until "word1", using a
positive lookahead (?=word1) to ensure "word1" is not included in the match.

```


# Split cert with two sections

See https://www.gnu.org/software/sed/manual/html_node/Range-Addresses.html

```
cat ca | gsed -n '1,/-----END CERTIFICATE-----/p'
-----BEGIN CERTIFICATE-----
AAA
-----END CERTIFICATE-----

cat ca | gsed '1,/-----END CERTIFICATE-----/d'
-----BEGIN CERTIFICATE-----
BBB
-----END CERTIFICATE-----
```
