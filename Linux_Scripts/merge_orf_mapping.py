import sys

print("starting")
print(sys.argv[1])

with open(sys.argv[1], 'wt') as outfile:
    v_files = str(sys.argv[2:])
    v_files = v_files.replace("[", "")
    v_files = v_files.replace("]", "")
    v_files = v_files.replace("'", "")
    v_list = v_files.split(", ")
    j=1
    for v_new in v_list:
        print(v_new)
        i=1
        with open(v_new,'rt') as v:
            #i=0
            print("opened file successfully")
            for line in v:
                if (j==1 and i==2):
                    j+=1
                    print("wrote header")
                    outfile.write('ComboId\t%s' %(line))
                elif (i>2):
                    outfile.write('%s\t%s' %(v_new, line))
                i+=1
print("done")