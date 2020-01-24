touch /tmp/chrisTint2Show
sleep 0.25
if [ -e /tmp/chrisTint2Show ]; then
  for i in $(xdotool search --classname 'tint2'); do
    xdotool windowmap "$i"
    xdotool windowraise "$i"
  done
fi
