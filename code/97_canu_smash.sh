#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 8
#SBATCH -t 20:00:00
#SBATCH -J CANU_double
#SBATCH --mail-type=ALL
#SBATCH --mail-user ho-yeung.chim.2766@student.uu.se

# Load modules
module load bioinfo-tools
module load canu

# Your commands

canu \
-p double -d /proj/genomeanalysis2022/nobackup/work/hychim/canu/ genomeSize=23m \
corThreads=8 useGrid=False \
-pacbio-raw /domus/h1/hychim/private/UU_GenomeAnalysis/data/raw_data/pacbio_data/SRR6037732_scaffold_11.fq.gz \
corMhapSensitivity=normal corOutCoverage=100 "batOptions=-dg 3 -db 3 -dr 1 -ca 500 -cp 50"

