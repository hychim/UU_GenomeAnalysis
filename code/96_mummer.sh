#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 2:00:00
#SBATCH -J mummer_11
#SBATCH --mail-type=ALL
#SBATCH --mail-user ho-yeung.chim.2766@student.uu.se

# Load modules
module load bioinfo-tools
module load MUMmer

# Your commands
nucmer --prefix /domus/h1/hychim/private/UU_GenomeAnalysis/code/test_mummer/canu \
/home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/quast/reference/sequence.fasta \
/home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/pilon/20220408_pilon_out.fasta

mummerplot --png --layout --filter --breaklen \
/domus/h1/hychim/private/UU_GenomeAnalysis/code/test_mummer/canu.delta \
-R /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/quast/reference/sequence.fasta \
-Q /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/pilon/20220408_pilon_out.fasta \
--prefix /domus/h1/hychim/private/UU_GenomeAnalysis/code/test_mummer/canu
