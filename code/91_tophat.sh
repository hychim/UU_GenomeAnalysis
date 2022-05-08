#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 24:00:00
#SBATCH -J tophat_11
#SBATCH --mail-type=ALL
#SBATCH --mail-user ho-yeung.chim.2766@student.uu.se

# Load modules
module load bioinfo-tools
module load bowtie2
module load samtools
module load tophat

# SRR6040092  SRR6040093 SRR6040094  SRR6040095	SRR6040096  SRR6040097	SRR6156066  SRR6156067	SRR6156069


# build a index for fasta
tophat -o /home/hychim/private/UU_GenomeAnalysis/result/transcriptome/tophat/SRR6040092 \
	-p 4 \
	/home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/pilon/20220408_pilon_out \
	/home/hychim/private/UU_GenomeAnalysis/data/raw_data/transcriptome/trimmed/SRR6040092_scaffold_11.1.fastq.gz \
	/home/hychim/private/UU_GenomeAnalysis/data/raw_data/transcriptome/trimmed/SRR6040092_scaffold_11.2.fastq.gz
 
tophat -o /home/hychim/private/UU_GenomeAnalysis/result/transcriptome/tophat/SRR6040093 \
        -p 4 \
	/home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/pilon/20220408_pilon_out \
        /home/hychim/private/UU_GenomeAnalysis/data/raw_data/transcriptome/trimmed/SRR6040093_scaffold_11.1.fastq.gz \
        /home/hychim/private/UU_GenomeAnalysis/data/raw_data/transcriptome/trimmed/SRR6040093_scaffold_11.2.fastq.gz

tophat -o /home/hychim/private/UU_GenomeAnalysis/result/transcriptome/tophat/SRR6040094 \
        -p 4 \
	/home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/pilon/20220408_pilon_out \
        /home/hychim/private/UU_GenomeAnalysis/data/raw_data/transcriptome/trimmed/SRR6040094_scaffold_11.1.fastq.gz \
        /home/hychim/private/UU_GenomeAnalysis/data/raw_data/transcriptome/trimmed/SRR6040094_scaffold_11.2.fastq.gz

tophat -o /home/hychim/private/UU_GenomeAnalysis/result/transcriptome/tophat/SRR6040096 \
        -p 4 \
	/home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/pilon/20220408_pilon_out \
        /home/hychim/private/UU_GenomeAnalysis/data/raw_data/transcriptome/trimmed/SRR6040096_scaffold_11.1.fastq.gz \
        /home/hychim/private/UU_GenomeAnalysis/data/raw_data/transcriptome/trimmed/SRR6040096_scaffold_11.2.fastq.gz

tophat -o /home/hychim/private/UU_GenomeAnalysis/result/transcriptome/tophat/SRR6040097 \
        -p 4 \
	/home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/pilon/20220408_pilon_out \
        /home/hychim/private/UU_GenomeAnalysis/data/raw_data/transcriptome/trimmed/SRR6040097_scaffold_11.1.fastq.gz \
        /home/hychim/private/UU_GenomeAnalysis/data/raw_data/transcriptome/trimmed/SRR6040097_scaffold_11.2.fastq.gz

tophat -o /home/hychim/private/UU_GenomeAnalysis/result/transcriptome/tophat/SRR6156066 \
        -p 4 \
	/home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/pilon/20220408_pilon_out \
        /home/hychim/private/UU_GenomeAnalysis/data/raw_data/transcriptome/trimmed/SRR6156066_scaffold_11.1.fastq.gz \
        /home/hychim/private/UU_GenomeAnalysis/data/raw_data/transcriptome/trimmed/SRR6156066_scaffold_11.2.fastq.gz

tophat -o /home/hychim/private/UU_GenomeAnalysis/result/transcriptome/tophat/SRR6156067 \
        -p 4 \
	/home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/pilon/20220408_pilon_out \
        /home/hychim/private/UU_GenomeAnalysis/data/raw_data/transcriptome/trimmed/SRR6156067_scaffold_11.1.fastq.gz \
        /home/hychim/private/UU_GenomeAnalysis/data/raw_data/transcriptome/trimmed/SRR6156067_scaffold_11.2.fastq.gz

tophat -o /home/hychim/private/UU_GenomeAnalysis/result/transcriptome/tophat/SRR6156069 \
        -p 4 \
	/home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/pilon/20220408_pilon_out \
        /home/hychim/private/UU_GenomeAnalysis/data/raw_data/transcriptome/trimmed/SRR6156069_scaffold_11.1.fastq.gz \
        /home/hychim/private/UU_GenomeAnalysis/data/raw_data/transcriptome/trimmed/SRR6156069_scaffold_11.2.fastq.gz

tophat -o /home/hychim/private/UU_GenomeAnalysis/result/transcriptome/tophat/SRR6040095 \
        -p 4 \
	/home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/pilon/20220408_pilon_out \
        /home/hychim/private/UU_GenomeAnalysis/result/transcriptome/trimmomatic/SR6040095_scaffold_11_trimmed_1P,/home/hychim/private/UU_GenomeAnalysis/result/transcriptome/trimmomatic/SR6040095_scaffold_11_trimmed_1U \
        /home/hychim/private/UU_GenomeAnalysis/result/transcriptome/trimmomatic/SR6040095_scaffold_11_trimmed_2P,/home/hychim/private/UU_GenomeAnalysis/result/transcriptome/trimmomatic/SR6040095_scaffold_11_trimmed_2U
