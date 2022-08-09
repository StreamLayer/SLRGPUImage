#!/usr/bin/env bash

cd ./Sources/GPUImage/Metal

for i in *.metal; do
   xcrun -sdk iphoneos metal -c $i -o $(basename -s .metal $i).air
done

xcrun -sdk iphoneos metallib *.air -o ../Resources/default.metallib
