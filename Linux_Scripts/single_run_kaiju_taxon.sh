input_ndmp="/scratch/duhaimem_root/duhaimem/shared_data/VSTE/kaiju_db/nodes.dmp"
input_names="/scratch/duhaimem_root/duhaimem/shared_data/VSTE/kaiju_db/names.dmp"
input_vmi="/scratch/duhaimem_root/duhaimem/shared_data/VSTE/kaiju_db/kaiju_db_nr_euk.fmi"
samplename="/nfs/turbo/lsa-duhaimem/ajwing/long_term_erie_samples_assemblies/samp_515/assembly/megahit_noNORM/final.contigs.renamed.fa"
outname="/scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline/Kaiju_outputs/515.kaiju.out"

/nfs/turbo/lsa-duhaimem/Lake_Michigan_JGI_viral_metaGs/kaiju/bin/kaiju-addTaxonNames \
-t $input_ndmp \
-n $input_names \
-i $outname \
-o 515.kaiju.names.out \
-p
