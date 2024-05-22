#!/bin/bash

###############################
#                             #
#  1) Job Submission Options  #
#                             #
###############################

# Name
#SBATCH --job-name=dram

# Resources
# For MPI, increase ntasks-per-node
# For multithreading, increase cpus-per-task
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --mem-per-cpu=35gb
#SBATCH --time=80:00:00

# Account
#SBATCH --account=duhaimem1
#SBATCH --partition=standard

# Logs
#SBATCH --mail-user=ajwing@umich.edu
#SBATCH --mail-type=BEGIN,END,FAIL

# Environment
##SBATCH --export=ALL

#SBATCH --array=0-36%36

#  Show list of CPUs you ran on
echo $SLURM_JOB_NODELIST
echo ${SLURM_ARRAY_TASK_ID}


echo started

bash ajw_DRAM-v.sh ${SLURM_ARRAY_TASK_ID}

echo finished
