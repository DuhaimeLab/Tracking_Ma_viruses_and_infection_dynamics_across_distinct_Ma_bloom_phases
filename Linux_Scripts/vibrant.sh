arrayid=$(($1 + 1))

samplename=$(sed -n "${arrayid}p" /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline/Config/erie_isolates_singularity.txt)

python3 /nfs/turbo/lsa-duhaimem/ajwing/VIBRANT-master/VIBRANT_run.py -i /nfs/turbo/lsa-duhaimem/ajwing/ajw_chapter_2/erie_isolate_assemblies/ND-${samplename}/Megahit_meta-sensitive_out/final.contigs.fa -t 4 -folder /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline/vibrant_outputs/vibrant_results_${samplename} -d /nfs/turbo/lsa-duhaimem/ajwing/VIBRANT-master/databases/ -m /nfs/turbo/lsa-duhaimem/ajwing/VIBRANT-master/files/ -virome
