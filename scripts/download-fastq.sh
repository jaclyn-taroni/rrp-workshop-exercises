#!/bin/bash

set -euo pipefail

# Download R2 file from GitHub
curl -O https://raw.githubusercontent.com/AlexsLemonade/reproducible-research/main/instructor_notes/fastq_subset/subset-NC16_S1_L004_R2_001.fastq.gz 

# Reporting the number of lines in the R2 file
echo "The number of lines in the R2 file is:"
gunzip -c subset-NC16_S1_L004_R2_001.fastq.gz | wc -l

# Move the file we downloaded to the project raw data directory
mv subset-NC16_S1_L004_R2_001.fastq.gz ../data/raw/SRP255885
