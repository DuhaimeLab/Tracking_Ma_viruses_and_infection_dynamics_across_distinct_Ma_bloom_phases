import sys
from Bio import SeqIO

with open(sys.argv[1]) as fasta:
    for record in SeqIO.parse(fasta, "fasta"):
        print(record)
        outfile = [x for x in record.id.split(" ")][0] + ".fasta"
        with open(outfile,"w+") as out:
            SeqIO.write(record, out, "fasta")

