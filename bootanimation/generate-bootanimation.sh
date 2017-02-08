#!/bin/bash
set -e
HERE="$(dirname "$0")"
WIDTH="$1"
HEIGHT="$2"
HALF_RES="$3"
OUT="$ANDROID_PRODUCT_OUT/obj/BOOTANIMATION"

if [ "$HEIGHT" -lt "$WIDTH" ]; then
    SIZE="$HEIGHT"
else
    SIZE="$WIDTH"
fi

if [ "$HALF_RES" = "true" ]; then
    IMAGESIZE="$((SIZE / 2))"
else
    IMAGESIZE="$SIZE"
fi

RESOLUTION="${IMAGESIZE}x${IMAGESIZE}"
for x in $(tar tf "${HERE}/bootanimation.tar" --exclude '*/*'); do
    mkdir -p "$OUT/bootanimation/$x"
done
doit() { echo "Neither \"gm\" nor \"convert\" found. Install graphicsmagick or imagemagick." 1>&2; return 1; }
if which gm >/dev/null 2>&1 || which mogrify >/dev/null 2>&1; then
  mogrify="gm mogrify"
  if which mogrify >/dev/null 2>&1; then
    mogrify=mogrify
  fi
  doit() { echo "Building $RESOLUTION bootanimation.zip w/ GraphicsMagick mogrify" 1>&2; tar xfp "$HERE/bootanimation.tar" -C "$OUT/bootanimation/" && $mogrify -resize "$RESOLUTION" "$OUT/bootanimation/"*"/"*".jpg"; return $?; }
elif which convert >/dev/null 2>&1; then
  doit() { echo "Building $RESOLUTION bootanimation.zip w/ ImageMagick convert" 1>&2; tar xfp "$HERE/bootanimation.tar" --to-command "convert - -resize '$RESOLUTION' \"jpg:$OUT/bootanimation/\$TAR_FILENAME\""; return $?; }
fi
doit || exit 1
# Create desc.txt
echo "$WIDTH" "$HEIGHT" 30 > "$OUT/bootanimation/desc.txt"
cat "$HERE/desc.txt" >> "$OUT/bootanimation/desc.txt" # Create bootanimation.zip
cd "$OUT/bootanimation"

zip -qr0 "$OUT/bootanimation.zip" .
