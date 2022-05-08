#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 8:00:00
#SBATCH -J eggNOGmapper_11
#SBATCH --mail-type=ALL
#SBATCH --mail-user ho-yeung.chim.2766@student.uu.se

# Load modules
module load bioinfo-tools
module load eggNOG-mapper

emapper.py \
-i /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/masker/20220408_pilon_out.fasta.masked --itype genome \
-o /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/eggNOG/scaffold11 \
--cpu 4
