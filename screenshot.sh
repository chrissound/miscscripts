set -x
set -e

screenshotName=$(date +%F-%T).jpeg
screenshotPath=~/Screenshots/$screenshotName

maim --hidecursor -s $screenshotPath
maim --hidecursor -s ~/Screenshots/$(date +%F-%T).png

gm convert -quality 93 "$screenshotPath" -resize 50% +profile "*" ~/Screenshots/resized/0-5x"$screenshotName"
gm convert -quality 93 "$screenshotPath" -resize 25% +profile "*" ~/Screenshots/resized/0-25x"$screenshotName"
