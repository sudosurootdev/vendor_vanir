#!/bin/bash -e

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
    IMAGESIZE=$(expr $SIZE / 2)
else
    IMAGESIZE="$SIZE"
fi

RESOLUTION=""$IMAGESIZE"x"$IMAGESIZE""

for x in `tar tfj vendor/vanir/bootanimation/bootanimation.zip --exclude '*/*'`; do
    mkdir -p $OUT/bootanimation/$x
done
tar xfp "vendor/vanir/bootanimation/bootanimation.tar" --to-command "convert - -resize '$RESOLUTION' \"png8:$OUT/bootanimation/\$TAR_FILENAME\""

# Create desc.txt
echo "$WIDTH" "$HEIGHT" 30 > "$OUT/bootanimation/desc.txt"
cat "vendor/vanir/bootanimation/desc.txt" >> "$OUT/bootanimation/desc.txt"

# Create bootanimation.zip
cd "$OUT/bootanimation"

zip -qr0 "$OUT/bootanimation.zip" .
