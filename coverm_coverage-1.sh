
cd /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/coverm/

coverm genome --coupled /nfs/turbo/lsa-duhaimem/ajwing/ajw_2014_bloom/reads_for_vrhyme/49614/Sample_49614_R1.fastq /nfs/turbo/lsa-duhaimem/ajwing/ajw_2014_bloom/reads_for_vrhyme/49614/Sample_49614_R2.fastq --genome-fasta-directory /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/coverm/host_MAGs/49614/ --genome-fasta-extension fasta --methods relative_abundance mean covered_bases variance length rpkm tpm --min-covered-fraction 0 --output-file sample_49614_hosts_relative_abundance.tsv

