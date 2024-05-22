arrayid=$(($1 + 1))

samplename=$(sed -n "${arrayid}p" /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline/Config/erie_isolates_singularity.txt)

module load singularity

cd /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline/checkV

singularity exec /nfs/turbo/lsa-dudelabs/containers/checkV/checkv.sif checkv end_to_end /nfs/turbo/lsa-duhaimem/ajwing/ajw_chapter_2/erie_isolate_assemblies/ND-${samplename}/Megahit_meta-sensitive_out/final.contigs.fa /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline/checkV/$samplename.out -t 16 -d /nfs/turbo/lsa-duhaimem/ajwing/checkv-db-v1.4
