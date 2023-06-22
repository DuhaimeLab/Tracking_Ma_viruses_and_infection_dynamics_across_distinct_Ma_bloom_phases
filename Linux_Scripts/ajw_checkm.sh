#!/bin/bash

###############################
#                             #
#  1) Job Submission Options  #
#                             #
###############################

# Name
#SBATCH --job-name=checkm

# Resources
# For MPI, increase ntasks-per-node
# For multithreading, increase cpus-per-task
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=1gb
#SBATCH --time=80:00:00

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

# where your bins reside
cd /path/to/directory/with/bins

# command to execute checkm singularity container
# t refers to threads, x refers to ending of bins ie fasta or faa, first path leads to bins, second path makes output directory for checkm results

singularity exec /nfs/turbo/lsa-dudelabs/containers/checkm/checkm.sif checkm lineage_wf -t 8 -x fa /path/to/your/bins /path/to/output/directory/you/want/bins/stored
