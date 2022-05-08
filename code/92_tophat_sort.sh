#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 4:00:00
#SBATCH -J tophat_sort_11
#SBATCH --mail-type=ALL
#SBATCH --mail-user ho-yeung.chim.2766@student.uu.se

# Load modules
module load bioinfo-tools
module load samtools

# SRR6040092  SRR6040093 SRR6040094  SRR6040095 SRR6040096  SRR6040097  SRR6156066  SRR6156067  SRR6156069

# sorting
samtools sort /home/hychim/private/UU_GenomeAnalysis/result/transcriptome/tophat/SRR6040092/accepted_hits.bam  \
-o /home/hychim/private/UU_GenomeAnalysis/result/transcriptome/tophat_sorted/SRR6040092_sorted.bam

samtools sort /home/hychim/private/UU_GenomeAnalysis/result/transcriptome/tophat/SRR6040093/accepted_hits.bam  \
-o /home/hychim/private/UU_GenomeAnalysis/result/transcriptome/tophat_sorted/SRR6040093_sorted.bam

samtools sort /home/hychim/private/UU_GenomeAnalysis/result/transcriptome/tophat/SRR6040094/accepted_hits.bam  \
-o /home/hychim/private/UU_GenomeAnalysis/result/transcriptome/tophat_sorted/SRR6040094_sorted.bam

samtools sort /home/hychim/private/UU_GenomeAnalysis/result/transcriptome/tophat/SRR6040095/accepted_hits.bam  \
-o /home/hychim/private/UU_GenomeAnalysis/result/transcriptome/tophat_sorted/SRR6040095_sorted.bam

samtools sort /home/hychim/private/UU_GenomeAnalysis/result/transcriptome/tophat/SRR6040096/accepted_hits.bam  \
-o /home/hychim/private/UU_GenomeAnalysis/result/transcriptome/tophat_sorted/SRR6040096_sorted.bam

samtools sort /home/hychim/private/UU_GenomeAnalysis/result/transcriptome/tophat/SRR6040097/accepted_hits.bam  \
-o /home/hychim/private/UU_GenomeAnalysis/result/transcriptome/tophat_sorted/SRR6040097_sorted.bam

samtools sort /home/hychim/private/UU_GenomeAnalysis/result/transcriptome/tophat/SRR6156066/accepted_hits.bam  \
-o /home/hychim/private/UU_GenomeAnalysis/result/transcriptome/tophat_sorted/SRR6156066_sorted.bam

samtools sort /home/hychim/private/UU_GenomeAnalysis/result/transcriptome/tophat/SRR6156067/accepted_hits.bam  \
-o /home/hychim/private/UU_GenomeAnalysis/result/transcriptome/tophat_sorted/SRR6156067_sorted.bam

samtools sort /home/hychim/private/UU_GenomeAnalysis/result/transcriptome/tophat/SRR6156069/accepted_hits.bam  \
-o /home/hychim/private/UU_GenomeAnalysis/result/transcriptome/tophat_sorted/SRR6156069_sorted.bam

