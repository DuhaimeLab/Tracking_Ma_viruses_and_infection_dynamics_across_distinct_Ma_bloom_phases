#!/usr/bin/python

#usage: python keep_seqs_greater_30000.py [INNAME] [CUTOFF] [OUTNAME]
#INNAME: file that want to remove short sequences from
#CUTOFF: size threshold to keep sequences
#OUTNAME: output file name

import Bio
from Bio import SeqIO
import sys

inname = sys.argv[1]
cutoff = int(sys.argv[2])
outname = sys.argv[3]

i=0
with open(outname,'wt') as outfile:
    for seq_record in SeqIO.parse(inname,"fasta"):
        i+=1
        if (i==1):
    	        print("inside for loop")
        if (len(seq_record)>cutoff):
            outfile.write(">%s\n%s\n" % (seq_record.id, seq_record.seq))
            i+=1
            if (i==2):
                print("inside if statement")
