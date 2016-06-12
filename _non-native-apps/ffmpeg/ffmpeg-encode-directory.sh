#!/bin/sh

# encode all *.avi file into *.mov files in a directory

for i in *.avi;
  do name=`echo $i | cut -d'.' -f1`;
  echo $name;
  ffmpeg -i $i $name.mov;
done
echo "Done."

