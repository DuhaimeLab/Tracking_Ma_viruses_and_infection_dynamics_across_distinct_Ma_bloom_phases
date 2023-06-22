with open(snakemake.output["merge"], 'wt') as outfile:
    v_files = str(snakemake.input["counts"])
    v_list = v_files.split(" ")
    print("starting")
    for v_new in v_list:
        with open(v_new,'rt') as v:
            name=v_new.split("all_sep29_phages_plus_both_ma_lem01_variants_Sample")[1].split(".txt")[0]
            print(name)
            #i=0
            for line in v:
                outfile.write('%s\t%s' %(name, line))
                #i+=1
    print("done")
