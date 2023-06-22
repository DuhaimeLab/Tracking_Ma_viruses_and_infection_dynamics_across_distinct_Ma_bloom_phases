#!/usr/bin/python
"""process_vs2.py (author:BEH)
create a list of all the vs2 viral contigs
"""

import sys

assembly_list = sys.argv[1]
vs2_output = sys.argv[2]

print("started")

with open(vs2_output, 'wt') as outfile:
    print("iterate through assemblies")
    j=0
    for assembly in open(assembly_list):
        assembly = assembly.strip('\n')
        file_name = '%s.out/final-viral-score.tsv' %(assembly)
        print(file_name)
        i=0
        for line in open(file_name): 
            if j==0:
                outfile.write('Assembly\t%s' %(line))
                j+=1
            if i>=1:
                outfile.write('%s\t%s' %(assembly, line))
                if i==1:
                    print("writing")
            i+=1


print("done")
