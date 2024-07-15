#!/bin/bash

mkdir pre_quality_check

for file in data/*.fastq.gz; do
    fastqc "$file" -o pre_quality_check
done

multiqc pre_quality_check -o pre_quality_check

