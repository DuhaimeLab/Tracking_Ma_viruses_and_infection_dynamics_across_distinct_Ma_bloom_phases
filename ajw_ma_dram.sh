arrayid=$(($1 + 1))

samplename=$(sed -n "${arrayid}p" /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline/all_host_bins_for_study/all_ma_contigs/all_ma_contigs_list.txt)

cd /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline/all_host_bins_for_study/all_ma_contigs

DRAM.py annotate -i /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline/all_host_bins_for_study/all_ma_contigs/${samplename}.fa -o Annotation_${samplename}

#DRAM.py distill -i /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline/all_host_bins_for_study/all_ma_contigs/Annotation_${samplename}/annotations.tsv -o /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline/all_host_bins_for_study/all_ma_contigs/GenomeSummaries_${samplename}

