#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 5:00:00
#SBATCH -J spades_11
#SBATCH --mail-type=ALL
#SBATCH --mail-user ho-yeung.chim.2766@student.uu.se

# Load modules
module load bioinfo-tools
module load spades/3.12.0

# Your commands
/sw/bioinfo/spades/3.12.0/rackham/bin/spades.py \
--pe1-1 /home/hychim/private/UU_GenomeAnalysis/data/raw_data/illumina_data/SRR6058604_scaffold_11.1P.fastq.gz \
--pe1-2 /home/hychim/private/UU_GenomeAnalysis/data/raw_data/illumina_data/SRR6058604_scaffold_11.2P.fastq.gz \
--pacbio /home/hychim/private/UU_GenomeAnalysis/data/raw_data/pacbio_data/SRR6037732_scaffold_11.fq.gz \
-o /proj/genomeanalysis2022/nobackup/work/hychim/spades/
