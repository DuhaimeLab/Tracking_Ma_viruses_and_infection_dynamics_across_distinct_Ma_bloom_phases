arrayid=$(($1 + 1))

samplename=$(sed -n "${arrayid}p" /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline/Config/long_term_erie_samples.txt)

module load singularity

cd /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline/VirSorter2

singularity exec /nfs/turbo/lsa-dudelabs/containers/virsorter/virsorter.sif virsorter run -w /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline/VirSorter2/$samplename.out -i /nfs/turbo/lsa-duhaimem/ajwing/long_term_erie_samples_assemblies/samp_${samplename}/assembly/megahit_noNORM/final.contigs.renamed.fa  -j 10 all
