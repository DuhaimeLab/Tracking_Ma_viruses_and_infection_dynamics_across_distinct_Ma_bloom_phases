import Bio
from Bio import SeqIO

import sys

with open(sys.argv[2], 'wt') as outfile:
    filename = sys.argv[1]
    for seqrecord in SeqIO.parse(filename,"fasta"):
        sample=filename.split("-")[0]
        outfile.write(">%s--%s\n%s\n" % (sample, seqrecord.id, seqrecord.seq))
