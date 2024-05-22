#!/usr/bin/python
"""get_viruses_fasta.py (author:BEH)
create a fasta file with the sequences of all of the viral contigs for a particular assembly
"""


import Bio
from Bio import SeqIO

with open(snakemake.output["fasta"], 'wt') as outfile:
    with open(snakemake.input["clist"], 'rt') as viralcontigslist:
        contigs = []
        i = 0
        j = 0
        for line in viralcontigslist:
            if (i==0):
                i += 1
            else:
                i+=1
                assembly=line.split('--')[0].strip("\n")
                #if (i==2):
                    #print("assembly:%s" % assembly)
                    #print("params:%s" % snakemake.params["assembly"])
                if (assembly==snakemake.params["assembly"]):
                    contig = line.split('--')[1].strip("\n")
                    contigs.append(contig)
                    j+=1
                    #print("here")
        print(i)
        print("contigs count: %s" % j)

        i = 0
        filename = snakemake.input["fasta"]

        for seqrecord in SeqIO.parse(filename,"fasta"):
            comp = seqrecord.id
            comp = comp.replace(".", "_")
            if (comp in contigs):
                i+=1
                outfile.write(">%s--%s\n%s\n" % (snakemake.params["assembly"], comp, seqrecord.seq))

        print("matches count: %s" % i)

print("done")
