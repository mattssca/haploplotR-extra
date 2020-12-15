#!/bin/bash

Rscript ./scripts/xx/add/add-xx_haploplot.r
Rscript ./scripts/bed_reads_sub.r
sh ./scripts/bedtools.sub.sh
sh ./scripts/xx/xx_im.crop.sh
hgsid=$(perl ./scripts/pdfplot/scripts/urls2pdf_hgsid.pl ./out/bed/*.bed ./out/ideograms/ideogram.pdf female)


for bed in  $(ls ./out/bed_reads/w?.c?.adj.bed.gz)
do

perl ./scripts/pdfplot/scripts/upload.pl "$bed" "$hgsid"

done
