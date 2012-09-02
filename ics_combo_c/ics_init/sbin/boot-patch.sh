#!/system/xbin/busybox sh

/system/xbin/busybox sh /sbin/boot/bl_detect.sh
/system/xbin/busybox sh /sbin/boot/bl_detect2.sh &
/system/xbin/busybox sh /sbin/boot/scripts.sh
