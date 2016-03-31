#!/bin/bash
if [[ "$#" == 0 ]]
then
	clear
	echo " "
	echo "Interactive Mode.."
	echo " "
	echo "Desired ISO Image; File Path: "
	read iso
	echo " "
	echo "Desired USB Drive; Directory Path: "
	read usb
################## [[ $1 == "help" || "-h" || "--help" ||  ]] ##################
	echo " "
	echo "Imaging the USB drive. This can take some time. >30min is not unusual."
	echo "No further feedback will be provided until the process is complete."
	echo "Please be patient."
	echo " "
	sudo dd if="$iso" of="$usb" bs=1048576
	
	echo " "
elif [[ "$#" == 2 ]]
then
	echo " "
	echo "Imaging the USB drive. This can take some time. >30min is not unusual."
	echo "No further feedback will be provided until the process is complete."
	echo "Please be patient."
	echo " "
	sudo dd if="$1" of="$2" bs=1048576
	
	echo " "
else
	clear
	echo " "
	echo "ISO2USB v0.1beta;"
	echo "Create a bootable USB drive."
	echo " "
	echo "Usage:   	./iso2usb.sh  [ISO]... [DISK]..."
	echo "         	./iso2usb.sh  [INPUT]. [OUTPUT]."
	
	echo " "
	echo "Example: 	./iso2usb.sh  '/user/directory/image-file-1.0-amd64.iso' '/dev/disk'"
	echo "         	./iso2usb.sh  '/user/directory/image-file-1.0-amd64.iso' '/dev/sdb6'"
	
	echo " "
fi
