#!/bin/bash -l

#SBATCH -A uppmax2022-2-5
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 4:00:00
#SBATCH -J bwa_11
#SBATCH --mail-type=ALL
#SBATCH --mail-user ho-yeung.chim.2766@student.uu.se

module load bioinfo-tools
module load bwa/0.7.17

bwa index /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/canu/2022_03_29_scaffold11_canu.contigs.fasta

bwa mem /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/canu/2022_03_29_scaffold11_canu.contigs.fasta \
/home/hychim/private/UU_GenomeAnalysis/data/raw_data/illumina_data/SRR6058604_scaffold_11.1P.fastq.gz \
/home/hychim/private/UU_GenomeAnalysis/data/raw_data/illumina_data/SRR6058604_scaffold_11.2P.fastq.gz > /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/bwa/20220408_bwa_res.sam
