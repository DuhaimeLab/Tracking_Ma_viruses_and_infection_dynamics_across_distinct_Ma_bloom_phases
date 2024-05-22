"""
get_viruses_virsorter.py (author:BEH)
take a list of taxonomy ids and use it to create a parsed virsorter output file
for instance, just the viruses
"""

import re

with open(snakemake.output["vsout1"], 'wt') as out_file:
  with open(snakemake.input["vsin1"], 'rt') as in_file:
    print("here1")
    cat_list = snakemake.params["catlist"].split(",")
    print(cat_list)
    i=1
    for line in in_file:
      if (i>1):
        category = line.split('\t')[2].strip()
        category = str(category)
#        print(category)
        if (category in cat_list):
          out_file.write(line)
#        break
      i+=1
print("end")
