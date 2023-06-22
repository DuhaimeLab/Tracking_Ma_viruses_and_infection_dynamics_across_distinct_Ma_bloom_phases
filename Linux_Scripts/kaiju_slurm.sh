#!/bin/bash

###############################
#                             #
#  1) Job Submission Options  #
#                             #
###############################

# Name
#SBATCH --job-name=kaiju_lake_erie

# Resources
# For MPI, increase ntasks-per-node
# For multithreading, increase cpus-per-task
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=180gb
#SBATCH --time=2-00:00:00

# Account
#SBATCH --account=duhaimem1
#SBATCH --partition=largemem

# Logs
#SBATCH --mail-user=ajwing@umich.edu
#SBATCH --mail-type=BEGIN,END,FAIL

# Environment
##SBATCH --export=ALL
#SBATCH --array=0-32%31


#  Show list of CPUs you ran on
echo $SLURM_JOB_NODELIST

bash ./run_kaiju.sh ${SLURM_ARRAY_TASK_ID}
