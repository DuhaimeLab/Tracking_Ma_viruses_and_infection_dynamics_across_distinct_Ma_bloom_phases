#!/bin/bash

###############################
#                             #
#  1) Job Submission Options  #
#                             #
###############################

# Name
#SBATCH --job-name=featureCounts

# Resources
# For MPI, increase ntasks-per-node
# For multithreading, increase cpus-per-task
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=1gb
#SBATCH --time=08-00:00:00

# Account
#SBATCH --account=duhaimem1
#SBATCH --partition=standard

# Logs
#SBATCH --mail-user=ajwing@umich.edu
#SBATCH --mail-type=BEGIN,END,FAIL

# Environment
##SBATCH --export=ALL

#  Show list of CPUs you ran on, if you're running under PBS
echo $SLURM_JOB_NODELIST

#  Change to the directory you submitted from
if [ -n "$SLURM_SUBMIT_DIR" ]; then cd $SLURM_SUBMIT_DIR; fi
pwd

#need to rerun this if update DRAM output
#sed -i -e 's/merged_trimmed_viruses_only_95-85_greater_3000_//g' ../DRAM/genes.annotated.gff

module load singularity

cd /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline/

singularity exec /nfs/turbo/lsa-dudelabs/containers/subreads/subreads.sif featureCounts -p -t viral -g ID -a /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline/Blast/all_aug4_phages_results.txt.gff -o ./FeatureCounts/49614_viral_contig_counts.txt /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/whole_community_mapping/mapping_results_aug4_phages/sorted_reads/all_aug4_phages_Sample49614_sorted.bam
