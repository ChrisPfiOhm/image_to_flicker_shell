#!/bin/bash

# resize to 640x480
for file in *.JPG; do convert $file -resize 640x  ../640x480/640x480__$file; done

# resize to 2048x1536
for file in *.JPG; do convert $file -resize 2048x ../2048x1536/2048x1536__$file; done

