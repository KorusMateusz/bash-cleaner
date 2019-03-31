#!/bin/bash

moveFilesWithExtensionToDirectory(){
  count=`ls -1 *.$1 2>/dev/null | wc -l`
  if [ $count != 0 ]
  then 
    if ! [ -e ./$2 ] ;
      then
      mkdir $2
      fi
    mv --backup=t *.$1 ./$2 
  fi 
}

moveFilesWithExtensionToDirectory "mp3" "Music"
moveFilesWithExtensionToDirectory "jpg" "Images"
moveFilesWithExtensionToDirectory "png" "Images"
moveFilesWithExtensionToDirectory "gif" "Images"

rm *.log

