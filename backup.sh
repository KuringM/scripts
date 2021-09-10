#!/usr/bin/env bash

#mount /dev/sda1
sda1_drives=/dev/sda1
mount_document=/mnt/Backup
sudo umount $mount_document

[ -z "$mount_document" ] && sudo mkdir $mount_document
sudo mount $sda1_drives $mount_document

# backup some local files
local_file_mbin=$HOME/.local/mbin/
local_file_src=$HOME/.local/src/
local_files=(${local_file_mbin} ${local_file_src})

for i in ${local_files[@]}
do
	 [ -d $mount_document/ArchLinux/.local ] || mkdir $mount_document/ArchLinux/.local
	 sudo cp -rf $i $mount_document/ArchLinux/.local/
done

# backup prog files
prog_files1=$HOME/prog/go/
prog_files2=$HOME/prog/study/
prog_files=(${prog_files1} ${prog_files2})

for i in ${prog_files[@]}
do
	 [ -d $mount_document/ArchLinux/prog ] || mkdir $mount_document/ArchLinux/prog
	 sudo cp -rf $i $mount_document/ArchLinux/prog/
done


