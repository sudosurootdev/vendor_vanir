#!/bin/bash
COMBOS()
{
find vendor/vanir/products -name vanir_*.mk | while read FILE; do basename $FILE .mk | sed 's/vanir\_//g'; done
}
for x in `COMBOS | sort -h`; do
  echo "$x"
done

echo " "
echo " "
echo " "
echo " "

COMMOTIO()
{
find vendor/commotio/products -name commotio*.mk | while read FILE; do basename $FILE .mk | sed 's/commotio\_//g'; done
}
for y in `COMMOTIO | sort -h`; do
  echo "$y"
done
