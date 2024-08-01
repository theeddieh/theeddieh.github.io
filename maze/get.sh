#!/bin/bash

# w: w (width)
# h: h (height)
# m: m (margin)
# cell: cell (cell size)
# tube: tube (path thickness, %)
# wall: wall (wall thickness, %)
# curve: curve (bool, rounded corners)
# cross: cross (bool, paths can cross)
# count: count (pages)

# WIDTH="612"  # 8.5in x 72px
# HEIGHT="792" # 11in x 72px
# WIDTH="540"  # 7.5in x 72px
# HEIGHT="720" # 10in x 72px

# pixel
WIDTH="100"
HEIGHT="100"
CELL="10"
MARGIN="0"

# percentage
TUBE="0.8"
WALL="0.2"

# boolean
CURVE="0"
CROSS="0"

# integer
COUNT="1"

NAME="maze_${WIDTH}x${HEIGHT}.pdf"



echo "${NAME}"

curl -G \
    "http://davidbau.com/generated/maze.pdf" \
    -d w="${WIDTH}" \
    -d h="${HEIGHT}" \
    -d cell="${CELL}" \
    -d tube="${TUBE}" \
    -d wall="${WALL}" \
    -d curve="${CURVE}" \
    -d cross="${CROSS}" \
    -d m="${MARGIN}" \
    -d count="${COUNT}" \
    --progress-bar \
    --output "${NAME}" &&
    open "${NAME}"
