arrayid=$(($1 + 1))

assembly=$(sed -n "${arrayid}p" ../Config/erie_isolates_singularity.txt)


input_ndmp="/scratch/duhaimem_root/duhaimem/shared_data/VSTE/kaiju_db/nodes.dmp"
input_names="/scratch/duhaimem_root/duhaimem/shared_data/VSTE/kaiju_db/names.dmp"
input_vmi="/scratch/duhaimem_root/duhaimem/shared_data/VSTE/kaiju_db/kaiju_db_nr_euk.fmi"
samplename="/nfs/turbo/lsa-duhaimem/ajwing/ajw_chapter_2/erie_isolate_assemblies/ND-${samplename}/Megahit_meta-sensitive_out/final.contigs.fa"
outname="/scratch/duhaimem_root/duhaimem/ajwing/ajw_2014_bloom/final_SnakemakePipeline/temp_viral_id_outputs/Kaiju_outputs/$assembly.kaiju.out"

/nfs/turbo/lsa-duhaimem/Lake_Michigan_JGI_viral_metaGs/kaiju/bin/kaiju-addTaxonNames \
-t $input_ndmp \
-n $input_names \
-i $outname \
-o $assembly.kaiju.names.out \
-p

