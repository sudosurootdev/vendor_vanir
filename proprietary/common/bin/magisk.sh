#!/sbin/sh
#
# install magisk
#

export OUTFD=$(ps | grep -v "grep" | grep -o -E "update_binary(.*)" | cut -d " " -f 3); #BIG props to Chainfire
[ ! $OUTFD ] && export OUTFD=$(ps | grep -v "grep" | grep -o -E "/tmp/updater(.*)" | cut -d " " -f 3); #BIG props nuclearmistake for TWRP-izing
ui_print() { if [ $OUTFD ]; then echo "ui_print $*" 1>&$OUTFD; else echo $*; fi; return 0; }

ui_print "Unpacking magisk installer script..."
mkdir -p /tmp/magisk
busybox unzip /tmp/install/magisk.zip META-INF/com/google/android/update-binary -o -d /tmp

ui_print "Installing magisk..."
/sbin/sh /tmp/META-INF/com/google/android/update-binary dummy 1 /tmp/install/magisk.zip

ui_print ""
ui_print "Have fun android paying and pokemon going, suckas"
ui_print ""

exit 0
