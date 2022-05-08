#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 16
#SBATCH -t 4:00:00
#SBATCH -J trinity_11
#SBATCH --mail-type=ALL
#SBATCH --mail-user ho-yeung.chim.2766@student.uu.se

# Load modules
module load bioinfo-tools
module load trinity/2.4.0

cd /domus/h1/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/sorted

for file in ./*.bam
do
	Trinity \
	--genome_guided_bam ${file} \
	--CPU 16 \
	--max_memory 500G \
	--genome_guided_max_intron 10000 \
	--output /proj/genomeanalysis2022/nobackup/work/hychim/trinity/${file}_trinity
done
