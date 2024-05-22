#!/bin/bash

###############################
#                             #
#  1) Job Submission Options  #
#                             #
###############################

# Name
#SBATCH --job-name=checkV-sing

# Resources
# For MPI, increase ntasks-per-node
# For multithreading, increase cpus-per-task
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=36
#SBATCH --mem-per-cpu=2gb
#SBATCH --time=5-00:00:00

# Account
#SBATCH --account=duhaimem1
#SBATCH --partition=standard

# Logs
#SBATCH --mail-user=ajwing@umich.edu
#SBATCH --mail-type=BEGIN,END,FAIL

# Environment
##SBATCH --export=ALL
#SBATCH --array=0-32%31

#  Show list of CPUs you ran on
echo $SLURM_JOB_NODELIST
echo ${SLURM_ARRAY_TASK_ID}


echo started

bash checkv_sing.sh ${SLURM_ARRAY_TASK_ID}

echo finished
