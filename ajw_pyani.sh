#!/bin/bash

###############################
#                             #
#  1) Job Submission Options  #
#                             #
###############################

# Name
#SBATCH --job-name=pyani

# Resources
# For MPI, increase ntasks-per-node
# For multithreading, increase cpus-per-task
#SBATCH --nodes=10
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=1gb
#SBATCH --time=20:00:00

# Account
#SBATCH --account=duhaimem1
#SBATCH --partition=standard

# Logs
#SBATCH --mail-user=ajwing@umich.edu
#SBATCH --mail-type=BEGIN,END,FAIL

# Environment
##SBATCH --export=ALL

source /etc/profile.d/http_proxy.sh

conda activate pyani

cd /modify/to/path/containing/bin/directory

average_nucleotide_identity.py -i path/to/bin/directory -o path/to/directory/you/want/pyani/results/stored -m ANIb
