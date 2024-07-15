#!/bin/bash

mkdir -p kraken_reports

krakendb=silva_db

# Loop through each .filt.fastq.gz file in filtered_reads directory
for file in filtered_reads/*.filt.fastq.gz; do
    base=$(basename "$file" .filt.fastq.gz)
    
    # Run kraken2
    kraken2 --use-names --db $krakendb --threads 4 --confidence 0.1 \
            --report "kraken_reports/${base}.report" \
            --gzip-compressed "$file" > "kraken_reports/${base}.kraken"
done

