arrayid=$(($1 + 1))

samplename=$(sed -n "${arrayid}p" /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline/Config/erie_isolates_singularity.txt)

module load singularity

cd /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline/VirSorter2

singularity exec /nfs/turbo/lsa-dudelabs/containers/virsorter2/virsorter2.sif virsorter run -w /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline/VirSorter2/$samplename.out -i /nfs/turbo/lsa-duhaimem/ajwing/ajw_chapter_2/erie_isolate_assemblies/ND-${samplename}/Megahit_meta-sensitive_out/final.contigs.fa  -j 10 all
