#! /bin/bash

for eps in $(find . -name "*.eps");do 
	pdf="$(dirname "$eps")/$(basename "$eps" .eps).pdf"
	echo "ps2pdf $eps $pdf"
	ps2pdf "$eps" "$pdf"
	pdfcrop "$pdf" "$pdf"
done

#`for dir in `ls`
#`do
#`    echo $dir;
#`    cd $dir
#`    echo `pwd`
#`    for file in `ls *.ps`
#`    do
#`	echo $file;
#`	
#`    done
#`cd ..
#`done
