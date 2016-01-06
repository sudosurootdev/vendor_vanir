#!/bin/bash
COMBOS()
{
find vendor/vanir/products -name vanir_*.mk | while read FILE; do basename $FILE .mk | sed 's/vanir\_//g'; done
}
for x in `COMBOS | sort -h`; do
  ## ordered based on testicular circumference: decreasing
  add_lunch_combo vanir_$x-eng
  add_lunch_combo vanir_$x-userdebug
  add_lunch_combo vanir_$x-user
done
[ ! -e vendor/cm ] && mkdir -p vendor/cm
[ ! -e vendor/cm/build ] && mkdir -p vendor/cm/build
if [ ! -e vendor/cm ] || [ ! -e vendor/cm/build ]; then
  mkdir -p vendor/cm/build/tools
fi
if [ ! -h vendor/cm/build/tools ] || [ ! -e "`readlink vendor/cm/build/tools`" ]; then
  ln -sf `pwd`/vendor/vanir/build/tools vendor/cm/build/tools
fi
