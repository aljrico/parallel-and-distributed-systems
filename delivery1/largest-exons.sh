#!/bin/bash

N=$1

awk '/chr1/ { gsub(/,$/,"",$11); split($11, a, ","); m=asort(a); for(i=1;i<=length(a);i++) if(a[i]>m) m=a[i];  print m, $0}' OFS="\t" example.bed | sort -r -n 2>/dev/null | head -n$N
