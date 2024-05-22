
import os
import glob
import shutil

from Bio import SeqIO

# user inputs
os.chdir('./') # relative to python file location
cutoff = 10000
output_dir = 'above10k/'  # relative to working directory define above


def list_files(extension):
    return (f for f in os.listdir() if f.endswith('.' + extension))


files_to_check = list_files('fasta')

for f in files_to_check:

    for record in SeqIO.parse(f, 'fasta'):
        lenseq = len(str(record.seq))


    if lenseq >= cutoff:
        print('above desired cutoff')
        src = f
        dst = './' + output_dir + f
        shutil.copy(src, dst)

    else:
        print('below cutoff, pass')

