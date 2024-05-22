#!/bin/bash

###############################
#                             #
#  1) Job Submission Options  #
#                             #
###############################

# Name
#SBATCH --job-name=drep_genomes

# Resources
# For MPI, increase ntasks-per-node
# For multithreading, increase cpus-per-task
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --mem-per-cpu=8gb
#SBATCH --time=2-00:00:00

# Account
#SBATCH --account=duhaimem1

# Logs
#SBATCH --mail-user=ajwing@umich.edu
#SBATCH --mail-type=BEGIN,END,FAIL

# Environment
##SBATCH --export=ALL


#  Show list of CPUs you ran on
echo $SLURM_JOB_NODELIST


dRep dereplicate -sa 99 /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/all_mags_for_derep_wild_and_isolate/drep_bins -g /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/all_mags_for_derep_wild_and_isolate/*.fasta
