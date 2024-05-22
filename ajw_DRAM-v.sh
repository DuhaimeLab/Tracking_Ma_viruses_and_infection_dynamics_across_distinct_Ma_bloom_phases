arrayid=$(($1 + 1))

samplename=$(sed -n "${arrayid}p" /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline/VirSorter2/assems_list_vs2.txt)

cd /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline/VirSorter2

DRAM-v.py annotate -i /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline/VirSorter2/${samplename}.out/for-dramv/final-viral-combined-for-dramv.fa -v /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline/VirSorter2/${samplename}.out/for-dramv/viral-affi-contigs-for-dramv.tab -o Annotation_${samplename}

DRAM-v.py distill -i /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline/VirSorter2/Annotation_${samplename}/annotations.tsv -o /scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline/VirSorter2/GenomeSummaries_${samplename}

