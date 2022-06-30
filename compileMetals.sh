#!/usr/bin/env bash

cd ./Sources/GPUImage/Metal

for i in *.metal; do
   xcrun -sdk macosx metal -c $i -o $(basename -s .metal $i).air
done

xcrun -sdk macosx metallib *.air -o ../Resources/default.metallib
