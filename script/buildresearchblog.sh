#!/bin/bash

cd /media/SHARE/blog/hakyll_blog
ghc site.hs
./site build
#read -n1 -r -p "Press any key to continue..." key
