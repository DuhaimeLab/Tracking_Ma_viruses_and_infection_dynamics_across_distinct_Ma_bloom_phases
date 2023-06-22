#!/bin/bash

###############################
#                             #
#  1) Job Submission Options  #
#                             #
###############################

# Name
#SBATCH --job-name=checkm_taxon

# Resources
# For MPI, increase ntasks-per-node
# For multithreading, increase cpus-per-task
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=80gb
#SBATCH --time=48:00:00

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


module load singularity

cd /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/checkm

singularity exec /nfs/turbo/lsa-dudelabs/containers/checkm/checkm.sif checkm lineage_wf --tab_table -f /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/checkm_1_16_23.txt /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/coverm/host_MAGs/all_host_MAGs/ /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/checkm -t 8 -x fasta
