#!/bin/bash

Rscript ./scripts/xy/xy_haploplot.r
Rscript ./scripts/bed_reads_sub.r
sh ./scripts/xy/xy_im.crop.sh
sh ./scripts/bedtools.sub.sh
hgsid=$(perl ./scripts/pdfplot/scripts/urls2pdf_hgsid.pl ./out/bed/*.bed ./out/ideograms/ideogram.pdf male)


for bed in $(ls ./out/bed_reads/w?.c?.adj.bed.gz)
do

perl ./scripts/pdfplot/scripts/upload.pl "$bed" "$hgsid"

done
