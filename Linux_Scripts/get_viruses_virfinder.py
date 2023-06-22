#!/usr/bin/python
"""get_viruses_virfinder.py (author:BEH)
take a list of taxonomy ids and use it to create a parsed virfinder output file
for instance, just the viruses
"""
import re
with open(snakemake.output["vfout1"], 'wt') as out_file:
    with open(snakemake.input["vfin1"], 'rt') as in_file:
        for line in in_file:
            try:
                score = line.split('\t')[1].split(' ')[6]
            except:
                score = 0
            threshold = float(snakemake.params["score"])
            if (float(score)>=(threshold)):
                    out_file.write(line)
