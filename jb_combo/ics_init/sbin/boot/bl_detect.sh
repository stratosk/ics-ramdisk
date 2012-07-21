if /system/xbin/busybox [ ! -f /data/local/disable_bl ];
then

if /system/xbin/busybox [ -f /data/local/first_boot ] && /system/xbin/busybox [ ! -f /data/local/succ_boot ];
then
	echo 1 > /sys/kernel/req_recovery/enable

	# Remount system RW
	#/system/xbin/busybox mount -o remount,rw /system


	# backup original init.d
	#/system/xbin/busybox mv /system/etc/init.d /system/etc/init.d.ori

	# re-create init.d
	#/system/xbin/busybox mkdir /system/etc/init.d
	#/system/xbin/busybox chmod 777 /system/etc/init.d

	# Remount system RO
	#/system/xbin/busybox mount -o remount,ro /system
	
fi;

# remove succesful boot flag
/system/xbin/busybox rm /data/local/succ_boot

fi;
