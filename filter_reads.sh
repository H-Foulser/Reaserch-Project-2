#!/bin/bash

mkdir -p filtered_reads

for file in trimmed/*.trimmed.fastq.gz; do
    base=$(basename "$file" .trimmed.fastq.gz)
    fastp -q 9 -l 1000 -b 2000 -G -A -i "$file" -o "filtered_reads/${base}.filt.fastq.gz"
done

