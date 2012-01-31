#!/bin/sh

cd ics_init
find . | cpio -o -H newc | gzip >../ramdisk.img
cd ..
cd ics_rec_init
find . | cpio -o -H newc | gzip >../ramdisk-recovery.img
cd ..
cd ..
