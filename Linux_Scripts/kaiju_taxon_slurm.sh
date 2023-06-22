#!/bin/bash

###############################
#                             #
#  1) Job Submission Options  #
#                             #
###############################

# Name
#SBATCH --job-name=kaiju_taxon

# Resources
# For MPI, increase ntasks-per-node
# For multithreading, increase cpus-per-task
#SBATCH --nodes=1
#SBATCH --time=1-00:00:00

# Account
#SBATCH --account=duhaimem1
#SBATCH --partition=standard
#SBATCH --mem=20G

# Logs
#SBATCH --mail-user=ajwing@umich.edu
#SBATCH --mail-type=BEGIN,END,FAIL

# Environment
#SBATCH --export=ALL
#SBATCH --array=0-32%31

#  Show list of CPUs you ran on
echo $SLURM_JOB_NODELIST

bash ./kaiju_taxon.sh ${SLURM_ARRAY_TASK_ID}
