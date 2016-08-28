#!/sbin/sh
#
# Centralized updater-script spam
#

OUTFD=$(ps | grep -v "grep" | grep -o -E "update_binary(.*)" | cut -d " " -f 3); #BIG props to Chainfire
[ ! $OUTFD ] && export OUTFD=$(ps | grep -v "grep" | grep -o -E "/tmp/updater(.*)" | cut -d " " -f 3); #BIG props nuclearmistake for TWRP-izing

header()
{
  cat <<EOF
 
 
 
 
 
 
 
                L.
                EW:        ,ft t   j.
             .. E##;       t#E Ej  EW,
t      .DD. ;W, E###t      t#E E#, E##j
EK:   ,WK. j##, E#fE#f     t#E E#t E###D.
E#t  i#D  G###, E#t D#G    t#E E#t E#jG#W;
E#t j#f :E####, E#t  f#E.  t#E E#t E#t t##f
E#tL#i ;W#DG##, E#t   t#K: t#E E#t E#t  :K#E:
E#WW, j###DW##, E#t    ;#W,t#E E#t E#KDDDD###i
E#K: G##i,,G##, E#t     :K#D#E E#t E#f,t#Wi,,,
ED.:K#K:   L##, E#t      .E##E E#t E#t  ;#W:
t ;##D.    L##, ..         G#E E#t DWi   ,KK:
  ,,,      .,,              fE ,;.
                             ,
  Vanir - Nougat 7.0
    'Perfectly Creamy'
    by Team Vanir
 
EOF
}

footer()
{
  cat <<EOF
 
If your phone doesn't burn with
the fire of Odin, strike it with
the hammer of Thor.
 
EOF
}

case "$1" in
  header|footer)
    $1 2>&1 | while IFS='' read -r line; do echo "ui_print $line"; done 1>&$OUTFD
    ;;
  *)
    exit 1
esac

sleep 1

exit 0
