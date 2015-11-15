#!/bin/bash
if [[ "$#" == 0 ]]
then
	clear
	echo " "
	echo "Interactive Mode.."; sleep 0.75
	echo " "; sleep 0.75
	echo "Desired ISO Image; File Path: "; sleep 0.75
	read ISO; sleep 0.75
	echo " "; sleep 0.75
	echo "Desired USB Disk; Directory Path: "; sleep 0.75
	read DISK; sleep 0.75
################## [[ $1 == "help" || "-h" || "--help" ||  ]] ##################
	echo " "; sleep 0.75
	echo "Imaging the USB drive. This can take some time. >30min is not unusual."
	echo "No further feedback will be provided until the process is complete."
	echo "Please be patient."; sleep 0.75
	echo " "
	sudo dd if="$ISO" of="$DISK" bs=1M
	sleep 0.75
	echo " "
elif [[ "$#" == 2 ]]
then
	echo " "; sleep 0.75
	echo "Imaging the USB drive. This can take some time. >30min is not unusual."
	echo "No further feedback will be provided until the process is complete."
	echo "Please be patient."; sleep 0.75
	echo " "
	sudo dd if="$1" of="$2" bs=1M
	sleep 0.75
	echo " "
else
	clear
	echo " "
	echo "ISO2USB v0.1beta;"
	echo "Create a bootable USB drive."
	echo " "; sleep 0.75
	echo "Usage:   	./iso2usb.sh  [ISO]... [DISK]..."
	echo "         	./iso2usb.sh  [INPUT]. [OUTPUT]."
	sleep 0.75
	echo " "
	echo "Example: 	./iso2usb.sh  '/user/directory/image-file-1.0-amd64.iso' '/dev/disk'"
	echo "         	./iso2usb.sh  '/user/directory/image-file-1.0-amd64.iso' '/dev/sdb6'"
	sleep 0.75
	echo " "
fi