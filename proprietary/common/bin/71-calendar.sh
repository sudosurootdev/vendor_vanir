#!/sbin/sh
#
# /system/addon.d/71-calendar.sh
# Automagically fix duplicate calendars by removing AOSP calendar from /system when Google Calendar is installed from the play store

export OUTFD=$(ps | grep -v "grep" | grep -o -E "update_binary(.*)" | cut -d " " -f 3);
[ ! $OUTFD ] && export OUTFD=$(ps | grep -v "grep" | grep -o -E "/tmp/updater(.*)" | cut -d " " -f 3);

. /tmp/backuptool.functions

case "$1" in
  post-restore)
    if [ ! -d /data/app ]; then
      echo "data isn't mounted! plz inform nuclearmistake"
    elif ls /data/app | grep -q com.google.android.calendar-; then
      echo "Auto-removing AOSP calendar from /system because you have installed Google calendar from the Play store"
      rm -Rf $S/app/Calendar
    fi
  ;;
  *)
    # no-op
  ;;
esac 2>&1 | while read LINE; do echo "ui_print $LINE" 1>&$OUTFD; done
