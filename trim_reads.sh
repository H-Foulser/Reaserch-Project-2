#!/bin/bash

mkdir -p trimmed

for file in data/*.fastq.gz; do
    base=$(basename "$file" .fastq.gz)
    porechop -t 4 -i "$file" -o "trimmed/${base}.trimmed.fastq.gz" --format fastq.gz
done


