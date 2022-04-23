#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 3:00:00
#SBATCH -J bowtie2_11
#SBATCH --mail-type=ALL
#SBATCH --mail-user ho-yeung.chim.2766@student.uu.se

# Load modules
module load bioinfo-tools
module load bowtie2

bowtie2-build /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/pilon/20220408_pilon_out.fasta \
/home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/pilon/20220408_pilon_out
