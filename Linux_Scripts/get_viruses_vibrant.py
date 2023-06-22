"""
get_viruses_vibrant.py (author:BEH)
take a list of taxonomy ids and use it to create a parsed vibrant output file
for instance, just the viruses
"""


with open(snakemake.output["merge"], 'wt') as outfile:
    v_files = str(snakemake.input["i"])
    v_list = v_files.split(" ")
    for v_new in v_list:
        with open(v_new,'rt') as v:
            name=v_new.split("/")[8].split("_")[2]
            print(name)
            for line in v:
                if (line[0]==">"):
                    contig=line[1:]
                    outfile.write('%s\t%s' %(name, contig))
