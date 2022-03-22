#!/bin/bash

NUMBER=`ls -1q ~/Desktop/*.{jpg,png,mp3,wav,mp4,mov,docx,txt,csv,xlsx,pdf} | wc -l`

USERNAME=`whoami`
UPATH="/c/Users/${USERNAME}/Desktop/Unclutterful"

DOCPATH=${UPATH}/Documents
IMGPATH=${UPATH}/Images
VIDPATH=${UPATH}/Videos
AUDPATH=${UPATH}/Audio

echo "Moving ${NUMBER} files into respective directories"

if [ -d "${DOCPATH}" ]
then
	mv ~/Desktop/*.{docx,txt,csv,xlsx,pdf} ${DOCPATH}
	echo "Documents directory already exists"
	echo "Added files to directory"
else
	mkdir -p ${DOCPATH}
	mv ~/Desktop/*.{docx,txt,csv,xlsx,pdf} ${DOCPATH}
	echo "Documents directory has been created"
	echo "Added files to directory"
fi

if [ -d "${IMGPATH}" ]
then
	mv ~/Desktop/*.{jpg,png} ${IMGPATH}
	echo "Images directory already exists"
	echo "Added files to directory"
else

	mkdir -p ${IMGPATH}
	mv ~/Desktop/*.{jpg,png} ${IMGPATH}
	echo "Images directory has been created"
	echo "Added files to directory"
fi

if [ -d "${AUDPATH}" ]
then
	mv ~/Desktop/*.{mp3,wav} ${AUDPATH}
	echo "Audio directory already exists"
	echo "Added files to directory"
else
	mkdir -p ${AUDPATH}
	mv ~/Desktop/*.{mp3,wav} ${AUDPATH}
	echo "Audio directory has been created"
	echo "Added files to directory"
fi

if [ -d "${VIDPATH}" ]
then
	mv ~/Desktop/*.{mp4,mov} ${VIDPATH}
	echo "Video directory already exists"
	echo "Added files to directory"
else

	mkdir -p ${VIDPATH}
	mv ~/Desktop/*.{mp4,mov} ${VIDPATH}
	echo "Video directory has been created"
	echo "Added files to directory"
fi

echo "Cannot stat and Cannot access errors OK if no files are found on Desktop"
