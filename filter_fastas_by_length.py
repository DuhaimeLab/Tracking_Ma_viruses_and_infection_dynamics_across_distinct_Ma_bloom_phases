# Calculate length of sequence for each fasta file in a folder
from Bio import SeqIO
import pandas as pd
import os


# Function
def list_files(extension):
    return (f for f in os.listdir() if f.endswith('.' + extension))


init_dir = os.getcwd()

# Get user input
folder = input('Directory of sequences (fasta): ')
outputdir = input('Output directory: ')
filename = input('Filename for output (tsv): ')

complete_path = outputdir + filename

# Change working directory to user folder
os.chdir(folder)

fasta_files = list_files('fasta')

names = []
seqlen = []

for file in fasta_files:

    for record in SeqIO.parse(file, 'fasta'):
        sequence = str(record.seq)

        names.append(file)
        seqlen.append(len(sequence))

df = pd.DataFrame(
    {'filename': names,
     'sequence_length': seqlen
     })

os.chdir(init_dir)

print('saving file...')
df.to_csv(complete_path, index=False, sep='\t')
print('done!')
