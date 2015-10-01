#!/bin/bash



# create folders
declare -a arr=("raw" "jpg" )
declare -a arr_jpg=("640x480" "2048x1536" "_original")

for i in "${arr[@]}"
do
   if [[ ! -e $i ]]; then
      echo "created folder $i"
      mkdir "$i"
      if [[ "$i" == "jpg" ]]; then
         cd "$i"
         for j in "${arr_jpg[@]}"
         do
            mkdir "$j"
         done
      fi
   elif [[ ! -d $i ]]; then
      echo "$i already exists but is not a directory" 1>&2
fi
done


# move raw files to raw folder                  #todo check if files exist
#if [-f *.NEF ]; then
   mv *.NEF ./raw
#fi
#if [-f *.JPG ]; then
   mv *.JPG ./jpg

   cd ./jpg
   mv *.JPG ./_original
#fi

