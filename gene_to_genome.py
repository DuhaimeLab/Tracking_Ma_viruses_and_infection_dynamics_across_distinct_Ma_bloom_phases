import sys

with open(sys.argv[2],'wt') as outfile:
    outfile.write("protein_id\tcontig_id\tkeywords\n")
    with open(sys.argv[1]) as input_table:
        for line in input_table:
            if (">" in line):
                protein_info = line.split(" ")[0].split(">")[1]
                protein_id = protein_info
                index = protein_id.rfind("_")
                contig_id = protein_id[:index]
                outfile.write("%s\t%s\tNA\n" %(protein_id, contig_id))