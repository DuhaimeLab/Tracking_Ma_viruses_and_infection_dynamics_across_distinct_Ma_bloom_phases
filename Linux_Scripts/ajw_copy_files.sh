#!/bin/bash

###############################
#                             #
#  1) Job Submission Options  #
#                             #
###############################

# Name
#SBATCH --job-name=moving_day

# Resources
# For MPI, increase ntasks-per-node
# For multithreading, increase cpus-per-task
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=2000mb
#SBATCH --time=03-00:00:00

# Account
#SBATCH --account=duhaimem1
#SBATCH --partition=standard

# Logs
#SBATCH --mail-user=ajwing@umich.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --output=Logs/%x-%j.out

# Environment
##SBATCH --export=ALL

source /etc/profile.d/http_proxy.sh

# List compute nodes allocated to the job
if [[ $SLURM_JOB_NODELIST ]] ; then
    echo "Running on"
    scontrol show hostnames $SLURM_JOB_NODELIST
    echo -e "\n"
fi

#####################
#                   #
#  2) Job Commands  #
#                   #
#####################

cp -r /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/sep_2022_vrhyme_infxn_pred_netwrx /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline
