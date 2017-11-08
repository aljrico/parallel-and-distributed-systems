#!/bin/bash

N=$1

awk '{ gsub(", ", " "); print $0}' FS="," jan2017articles.csv | sort -t',' -k5 -r 2>/dev/null | head -n$N
