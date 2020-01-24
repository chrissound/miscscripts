if [ -e /tmp/chrisTint2Show ]; then
  rm -f /tmp/chrisTint2Show
  w=`xdotool getactivewindow`

  for i in $(xdotool search --classname 'tint2'); do
    xdotool windowunmap "$i"
  done

  xdotool windowactivate "$w"
  rm -f /tmp/chrisTint2Show
fi
