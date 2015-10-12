#!/bin/bash


for d in $1/*/; do
    # Will print */ if no directories are available
    echo $d
    cd "$d" 

  # for file in $d; do
      if [[ -n $(echo *.JPG) ]]; then   # or [ -n "$(echo *.flac)" ]
         echo "found"
         /home/chris/workspace/image_to_flicker_shell/create_folder_if_exists.sh
      else
         echo "not found"
      fi
   # done;

    # create folders and sort images if jpg file exists


    # return to folder
    cd ".."
done
