with open(snakemake.output["o"], 'wt') as outfile:
    outfile.write("sample\tcontig\tcategory\n")
    v_files = str(snakemake.input["i"])
    #print(v_files)
    v_list = v_files.split(" ")
    print(v_list)
    for vnew in v_list:
        print(vnew)
        name=vnew.split("/")[1]
        print(name)
        with open(vnew,'rt') as v:
            for line in v:
                c1 = line.split(" ")[0]
                if (c1 == "##"):
                    if ("(" in line):
                        c2 = line.split(" ")[1]
                        category=c2
                if (c1 != "##"):
                    contig=line.split(",")[0]
                    numgenes1=line.split(",")[1]
                    numgenes2=line.split(",")[3]
                    numphagegenes=line.split(",")[5]
                    phagessig=line.split(",")[6]
                    noncaudphagesig=line.split(",")[7]
                    outfile.write('%s\t%s\t%s\n' %(name,contig,category))
