#!/bin/bash

fasta_file="contig.fasta"
list_file="contig_list.txt"
output_file="output.fasta"

while IFS= read -r contig_id; do
    header_found=false
    sequence=""
    
    while IFS= read -r line; do
        if [[ $line =~ ^">"$contig_id$ ]]; then
            header_found=true
        elif [[ $line =~ ^">" ]]; then
            break
        fi
        
        if [ "$header_found" = true ]; then
            sequence="$sequence$line"
        fi
    done < "$fasta_file"
    
    if [ -n "$sequence" ]; then
        echo ">$contig_id" >> "$output_file"
        echo "$sequence" >> "$output_file"
    fi
done < "$list_file"

