#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 8
#SBATCH -t 24:00:00
#SBATCH -J RepeatMasker_11
#SBATCH --mail-type=ALL
#SBATCH --mail-user ho-yeung.chim.2766@student.uu.se

# Load modules
module load bioinfo-tools
module load RepeatModeler
module load RepeatMasker

BuildDatabase -name mySpecies /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/pilon/20220408_pilon_out.fasta
RepeatModeler -database mySpecies -pa 8

RepeatMasker -lib mySpecies-families.fa -xsmall -pa 8 \
-dir /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/masker \
/home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/pilon/20220408_pilon_out.fasta
