#!/bin/bash

# domains=(
#     "http://www.google.com/s2/favicons?domain=https://www.harrison.pizza"
#     "http://www.google.com/s2/favicons?domain=https://github.com/theeddieh"
#     "http://www.google.com/s2/favicons?domain=https://twitter.com/theeddieh"
#     "http://www.google.com/s2/favicons?domain=https://blog.harrison.pizza"
#     "http://www.google.com/s2/favicons?domain=https://tilde.club/~ed/"
#     "http://www.google.com/s2/favicons?domain=https://spacehey.com/edd"
#     "http://www.google.com/s2/favicons?domain=https://keybase.io/eddieharrison"
#     "http://www.google.com/s2/favicons?domain=https://stackoverflow.com/users/1299930/theeddieh"
#     "http://www.google.com/s2/favicons?domain=https://www.linkedin.com/in/edwardjharrison"
# )

# some you need the protocol?

domains=(
    "www.harrison.pizza"
    "github.com"
    "twitter.com"
    "https://blog.harrison.pizza"
    "tilde.club"
    "spacehey.com"
    "keybase.io"
    "stackoverflow.com"
    "linkedin.com"
)

for d in "${domains[@]}"; do
    echo "${d}"
    wget -O ${d}.png "http://www.google.com/s2/favicons?domain=${d}"
done
