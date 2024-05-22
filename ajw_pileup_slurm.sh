#!/bin/bash

###############################
#                             #
#  1) Job Submission Options  #
#                             #
###############################

# Name
#SBATCH --job-name=pileup_files

# Resources
# For MPI, increase ntasks-per-node
# For multithreading, increase cpus-per-task
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=100gb
#SBATCH --time=24:00:00

# Account
#SBATCH --account=duhaimem1
#SBATCH --partition=standard

# Logs
#SBATCH --mail-user=ajwing@umich.edu
#SBATCH --mail-type=BEGIN,END,FAIL

# Environment
##SBATCH --export=ALL

#SBATCH --array=1-36%36

#  Show list of CPUs you ran on
echo $SLURM_JOB_NODELIST
echo ${SLURM_ARRAY_TASK_ID}


echo started

module load singularity

sample=$(sed -n "$SLURM_ARRAY_TASK_ID"p bams.job.conf)

cd /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/lem_01_mapping/erie_phage_mapping_results/sorted_reads/

pileup.sh in=/erie_ma_phage_combined_Sample${sample}_sorted.bam out=/${sample}.pileup hist=/{sample}_histogram.txt
