#!/bin/sh

########################
#how to use this script#
########################

: '
-save this file anywhere and make it executable with: chmod +x
-from terminal; cd into top directory where you want to search for files to be renamed
-typing either of the following lines to search by file name or type and execute this file from its full path

#needs work: search by file type 

find . -type f -name \*.JPG -exec ./rename.sh {} +

#works better: search by file name

find . -name "*.exr" -exec /home/user/rename.sh {} +

the format below is a serch string in the file name, followed by the string to replace it with
'

for f; do
    mv -v "$f" "${f//201_022_010_/201_022_010_test_}"
done
