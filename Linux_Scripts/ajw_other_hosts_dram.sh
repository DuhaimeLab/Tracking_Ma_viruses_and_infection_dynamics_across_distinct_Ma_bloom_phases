arrayid=$(($1 + 1))

samplename=$(sed -n "${arrayid}p" /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline/all_host_bins_for_study/other_bloom_host_contigs/other_bloom_hosts_list.txt)

cd /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline/all_host_bins_for_study/other_bloom_host_contigs

DRAM.py annotate -i /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline/all_host_bins_for_study/other_bloom_host_contigs/${samplename}.fa -o Annotation_${samplename}

DRAM.py distill -i /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline/all_host_bins_for_study/other_bloom_host_contigs/Annotation_${samplename}/annotations.tsv -o /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline/all_host_bins_for_study/other_bloom_host_contigs/GenomeSummaries_${samplename}

