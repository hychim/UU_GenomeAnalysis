#!/bin/bash -l

#SBATCH -A uppmax2022-2-5
#SBATCH -p core
#SBATCH -n 8
#SBATCH -t 20:00:00
#SBATCH -J pilon_11
#SBATCH --mail-type=ALL
#SBATCH --mail-user ho-yeung.chim.2766@student.uu.se

module load bioinfo-tools
module load samtools
module load Pilon

samtools view -Sb /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/bwa/20220408_bwa_res.sam > /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/bwa/20220408_bwa_res.bam
samtools sort /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/bwa/20220408_bwa_res.bam -o /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/bwa/20220408_bwa_res.sorted.bam
samtools index /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/bwa/20220408_bwa_res.sorted.bam

java -jar $PILON_HOME/pilon.jar --genome /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/canu/2022_03_29_scaffold11_canu.contigs.fasta \
--bam /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/bwa/20220408_bwa_res.sorted.bam \
--output 20220408_pilon_out \
--outdir /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/pilon/ --diploid --threads 8
