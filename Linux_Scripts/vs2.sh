#arrayid=$(($1 + 1))

#samplename=$(sed -n "${arrayid}p" /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline/Config/long_term_erie_samples.txt)

virsorter run -w /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline/VirSorter2/450.out -i /nfs/turbo/lsa-duhaimem/ajwing/long_term_erie_samples_assemblies/samp_450/assembly/megahit_noNORM/final.contigs.renamed.fa  -j 10 all
