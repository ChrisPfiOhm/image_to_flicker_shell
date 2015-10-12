#!/bin/bash


# create folders
arr=("raw" "jpg")
arr_jpg=("640x480" "2048x1536" "_original")

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

pwd

# move raw files to raw folder                  
if [[ -n $(echo *.NEF) ]]; then 
   mv *.NEF ./raw
else 
   echo "no *.NEF found"
fi

# move jpegs
if [[ -n $(echo *.JPG) ]]; then
   pwd
   mv *.JPG ./jpg

   cd ./jpg
   mv ../*.JPG ./_original
else 
   echo "no *.JPG not found"
fi

