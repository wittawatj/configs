#!/bin/bash

# Wittawat Jitkrittum
# Find all eps files in the current folder, crop and convert them to pdf.

for f in $(find $(pwd) -maxdepth 1 -type f -name "*.eps" -not -name "*-crop.eps")
do
	#eps2eps -dEPSCrop $f $(basename $f ".eps")"-crop.eps"
	ps2pdf -dEPSCrop $f
	pdfcrop $(basename $f ".eps")".pdf"
	pdftops -eps $(basename $f ".eps")"-crop.pdf" $(basename $f ".eps")"-crop.eps"
	#pdf2ps $(basename $f ".eps")"-crop.pdf"
	#rm $(basename $f ".eps")".pdf"
	#rm $(basename $f ".eps")"-crop.pdf"
	rm $(basename $f ".eps")"-crop.eps"
done

