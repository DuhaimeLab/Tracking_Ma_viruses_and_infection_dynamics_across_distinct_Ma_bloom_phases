arrayid=$(($1 + 1))
samplename=$(sed -n "${arrayid}p" /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline/Config/erie_isolates_singularity.txt)

python /nfs/turbo/lsa-duhaimem/Lake_Michigan_JGI_viral_metaGs/DeepVirFinder/dvf.py \
-i /nfs/turbo/lsa-duhaimem/ajwing/ajw_chapter_2/erie_isolate_assemblies/ND-${samplename}/Megahit_meta-sensitive_out/final.contigs.fa \
-o /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline/deepvirfinder/dvf_${samplename} \
-l 3000 \
-c 36
