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
#     "http://www.google.com/s2/favicons?domain=https://bsky.app/profile/edharrison.bsky.social"
#     "https://t1.gstatic.com/faviconV2?client=SOCIAL&type=FAVICON&fallback_opts=TYPE,SIZE,URL&url=https://bsky.app/profile/edharrison.bsky.social&size=16"
# )

# some you need the protocol?

domains=(
    "bsky.app"
)

# "read.cv"
# "www.harrison.pizza"
# "github.com"
# "twitter.com"
# "https://blog.harrison.pizza"
# "tilde.club"
# "spacehey.com"
# "keybase.io"
# "stackoverflow.com"
# "linkedin.com"
# "mastodon.xyz"
# "instagram.com"
# "youtube.com"

for d in "${domains[@]}"; do
    echo "${d}"
    wget -O ${d}.png "http://www.google.com/s2/favicons?domain=${d}"
done
