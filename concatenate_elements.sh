# Script to concatenate elements of a fasta file into a single sequence (instead of having multiple >, concatenate so we only have 1 >)

for i in *.fasta;
do awk '/>/&&c++>0 {next} 1' $i > concatenated_${i%};
done

