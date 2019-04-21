#!/bin/bash
set -x

# xdotool windowactivate $(xdotool search --name "^ranger$") \
#  && xdotool type ":cd ${1}" \
#  && xdotool key Return

for f in /tmp/ranger-ipc.*; do
  echo "cd ${1}" > "$f"
done
xdotool windowactivate "$(xdotool search --name "^ranger$")"
xdotool keydown alt && xdotool type m && xdotool keyup alt

# notes
# ranger explain
# ranger plugin
# elisp code
