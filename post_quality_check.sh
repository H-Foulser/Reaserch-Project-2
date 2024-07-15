  GNU nano 6.2            quality_check.sh                      #!/bin/bash
#!bin/bash

mkdir post_quality_check

for file in filtered_reads/*.fastq.gz; do
    fastqc "$file" -o post_quality_check
done

multiqc post_quality_check -o post_quality_check
