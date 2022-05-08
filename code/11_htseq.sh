#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 1:00:00
#SBATCH -J htseq_11
#SBATCH --mail-type=ALL
#SBATCH --mail-user ho-yeung.chim.2766@student.uu.se

# Load modules
module load bioinfo-tools
module load htseq
module load samtools

samtools index /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/sorted/SRR6040092_sorted.bam
samtools index /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/sorted/SRR6040093_sorted.bam
samtools index /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/sorted/SRR6040094_sorted.bam
samtools index /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/sorted/SRR6040095_sorted.bam
samtools index /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/sorted/SRR6040096_sorted.bam
samtools index /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/sorted/SRR6040097_sorted.bam
samtools index /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/sorted/SRR6156066_sorted.bam
samtools index /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/sorted/SRR6156067_sorted.bam
samtools index /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/sorted/SRR6156069_sorted.bam

cd /home/hychim/private/UU_GenomeAnalysis/result/transcriptome/htseq

htseq-count -f bam -t exon -i "ID" -r pos --stranded=no \
/home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/sorted/SRR6040092_sorted.bam \
/home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/braker/augustus.hints.gff3 > SRR6040092_counts.txt

htseq-count -f bam -t exon -i "ID" -r pos --stranded=no \
/home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/sorted/SRR6040093_sorted.bam \
/home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/braker/augustus.hints.gff3 > SRR6040093_counts.txt

htseq-count -f bam -t exon -i "ID" -r pos --stranded=no \
/home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/sorted/SRR6040094_sorted.bam \
/home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/braker/augustus.hints.gff3 > SRR6040094_counts.txt

htseq-count -f bam -t exon -i "ID" -r pos --stranded=no \
/home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/sorted/SRR6040095_sorted.bam \
/home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/braker/augustus.hints.gff3 > SRR6040095_counts.txt

htseq-count -f bam -t exon -i "ID" -r pos --stranded=no \
/home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/sorted/SRR6040096_sorted.bam \
/home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/braker/augustus.hints.gff3 > SRR6040096_counts.txt

htseq-count -f bam -t exon -i "ID" -r pos --stranded=no \
/home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/sorted/SRR6040097_sorted.bam \
/home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/braker/augustus.hints.gff3 > SRR6040097_counts.txt

htseq-count -f bam -t exon -i "ID" -r pos --stranded=no \
/home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/sorted/SRR6156066_sorted.bam \
/home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/braker/augustus.hints.gff3 > SRR6156066_counts.txt

htseq-count -f bam -t exon -i "ID" -r pos --stranded=no \
/home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/sorted/SRR6156067_sorted.bam \
/home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/braker/augustus.hints.gff3 > SRR6156067_counts.txt

htseq-count -f bam -t exon -i "ID" -r pos --stranded=no \
/home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/sorted/SRR6156069_sorted.bam \
/home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/braker/augustus.hints.gff3 > SRR6156069_counts.txt
