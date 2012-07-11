if /system/xbin/busybox [ ! -f /data/local/disable_bl ]; 
then

sleep 60

# create flags
echo 1 > /data/local/first_boot
echo 1 > /data/local/succ_boot
echo 0 > /sys/kernel/req_recovery/enable

fi;
