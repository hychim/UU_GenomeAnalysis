#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 8
#SBATCH -t 1:00:00
#SBATCH -J STAR_11
#SBATCH --mail-type=ALL
#SBATCH --mail-user ho-yeung.chim.2766@student.uu.se

# Load modules
module load bioinfo-tools
module load star

# Genome Indexing
STAR --runThreadN 8 \
--runMode genomeGenerate \
--genomeDir /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/genome \
--genomeFastaFiles /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/masker/20220408_pilon_out.fasta.masked

# Reads Mapping
STAR --runThreadN 8 \
--twopassMode Basic \
--genomeDir /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/genome \
--readFilesIn /home/hychim/private/UU_GenomeAnalysis/result/transcriptome/trimmomatic/SRR6040095_scaffold_11_trimmed_1P /home/hychim/private/UU_GenomeAnalysis/result/transcriptome/trimmomatic/SRR6040095_scaffold_11_trimmed_2P \
--outFileNamePrefix /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/mapping/SRR6040095_STAR_ \
--outSAMtype BAM Unsorted

STAR --runThreadN 8 \
--twopassMode Basic \
--genomeDir /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/genome \
--readFilesIn /home/hychim/private/UU_GenomeAnalysis/data/raw_data/transcriptome/trimmed/SRR6040092_scaffold_11.* \
--readFilesCommand zcat \
--outFileNamePrefix /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/mapping/SRR6040092_STAR_ \
--outSAMtype BAM Unsorted

STAR --runThreadN 8 \
--twopassMode Basic \
--genomeDir /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/genome \
--readFilesIn /home/hychim/private/UU_GenomeAnalysis/data/raw_data/transcriptome/trimmed/SRR6040093_scaffold_11.* \
--readFilesCommand zcat \
--outFileNamePrefix /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/mapping/SRR6040093_STAR_ \
--outSAMtype BAM Unsorted

STAR --runThreadN 8 \
--twopassMode Basic \
--genomeDir /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/genome \
--readFilesIn /home/hychim/private/UU_GenomeAnalysis/data/raw_data/transcriptome/trimmed/SRR6040094_scaffold_11.* \
--readFilesCommand zcat \
--outFileNamePrefix /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/mapping/SRR6040094_STAR_ \
--outSAMtype BAM Unsorted

STAR --runThreadN 8 \
--twopassMode Basic \
--genomeDir /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/genome \
--readFilesIn /home/hychim/private/UU_GenomeAnalysis/data/raw_data/transcriptome/trimmed/SRR6040096_scaffold_11.* \
--readFilesCommand zcat \
--outFileNamePrefix /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/mapping/SRR6040096_STAR_ \
--outSAMtype BAM Unsorted

STAR --runThreadN 8 \
--twopassMode Basic \
--genomeDir /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/genome \
--readFilesIn /home/hychim/private/UU_GenomeAnalysis/data/raw_data/transcriptome/trimmed/SRR6040097_scaffold_11.* \
--readFilesCommand zcat \
--outFileNamePrefix /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/mapping/SRR6040097_STAR_ \
--outSAMtype BAM Unsorted

STAR --runThreadN 8 \
--twopassMode Basic \
--genomeDir /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/genome \
--readFilesIn /home/hychim/private/UU_GenomeAnalysis/data/raw_data/transcriptome/trimmed/SRR6156066_scaffold_11.* \
--readFilesCommand zcat \
--outFileNamePrefix /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/mapping/SRR6156066_STAR_ \
--outSAMtype BAM Unsorted

STAR --runThreadN 8 \
--twopassMode Basic \
--genomeDir /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/genome \
--readFilesIn /home/hychim/private/UU_GenomeAnalysis/data/raw_data/transcriptome/trimmed/SRR6156067_scaffold_11.* \
--readFilesCommand zcat \
--outFileNamePrefix /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/mapping/SRR6156067_STAR_ \
--outSAMtype BAM Unsorted

STAR --runThreadN 8 \
--twopassMode Basic \
--genomeDir /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/genome \
--readFilesIn /home/hychim/private/UU_GenomeAnalysis/data/raw_data/transcriptome/trimmed/SRR6156069_scaffold_11.* \
--readFilesCommand zcat \
--outFileNamePrefix /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/mapping/SRR6156069_STAR_ \
--outSAMtype BAM Unsorted

