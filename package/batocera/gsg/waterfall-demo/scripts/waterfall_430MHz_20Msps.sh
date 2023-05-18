#!/bin/bash
DIR="$(dirname "$(readlink -f "$0")")"

# Start evmapy daemon and load button mappings
mkdir -p /var/run/evmapy/
cp $DIR/button_map.json /var/run/evmapy/event3.json
batocera-evmapy start > /dev/null 2>&1

# Execute actual program
waterfall-demo -f 430000000 -s 20000000 -b 17500000 -a 160

# Stop evmapy daemon
evmapy -c /dev/input/event3:
batocera-evmapy stop > /dev/null 2>&1

exit 0