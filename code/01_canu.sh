#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 20:00:00
#SBATCH -J CANU_11
#SBATCH --mail-type=ALL
#SBATCH --mail-user ho-yeung.chim.2766@student.uu.se

# Load modules
module load bioinfo-tools
module load canu

# Your commands
 
canu \
 -p 2022_03_29_scaffold11_canu -d ~/private/UU_GenomeAnalysis/result/genome_assembly/PacBio/ \
 genomeSize=23m \
 corThreads=4 useGrid=False \
 -pacbio ~/private/UU_GenomeAnalysis/data/raw_data/pacbio_data/SRR6037732_scaffold_11.fq.gz

