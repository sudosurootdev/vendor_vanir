#!/sbin/sh
#
# /system/addon.d/71-calendar.sh
# Automagically fix duplicate calendars by removing AOSP calendar from /system when Google Calendar is installed from the play store

export OUTFD=$(ps | grep -v "grep" | grep -o -E "update_binary(.*)" | cut -d " " -f 3);
[ ! $OUTFD ] && export OUTFD=$(ps | grep -v "grep" | grep -o -E "/tmp/updater(.*)" | cut -d " " -f 3);
[ ! $OUTFD ] && export OUTFD=1 #prevent syntax error that would be caused if OUTFD were unset, but we won't be outputting to the recovery console :-(

. /tmp/backuptool.functions

case "$1" in
  post-restore)
    echo "Checking for duplicate (AOSP/Google) calendars..."
    if [ ! -d /data/app ]; then
      if mount /data; then
        IMOUNTED=0
        echo "Mounted /data..."
      else
        echo "mount /data failed! plz inform nuclearmistake"
      fi
    else
      echo "/data already mounted..."
    fi
    if [ -d /data/app ] && ls /data/app | grep -q com.google.android.calendar-; then
      echo "Auto-removing AOSP calendar from /system because you have installed Google calendar from the Play store"
      rm -Rf $S/app/Calendar
    fi
    if [ $IMOUNTED ]; then
      if umount /data; then
        echo "Unmounted /data..."
      else
        echo "umount /data failed! plz inform nuclearmistake"
      fi
    fi
  ;;
  *)
    # no-op
  ;;
esac 2>&1 | while read LINE; do echo ui_print ${LINE} 1>&${OUTFD}; done
