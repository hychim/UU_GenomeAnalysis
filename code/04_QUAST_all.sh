#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 1:00:00
#SBATCH -J quast_11
#SBATCH --mail-type=ALL
#SBATCH --mail-user ho-yeung.chim.2766@student.uu.se

python /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/quast/quast-5.0.2/quast.py \
-o /proj/genomeanalysis2022/nobackup/work/hychim/quast \
-r /home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/quast/reference/sequence.fasta \
/home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/pilon/20220408_pilon_out.fasta \
/proj/genomeanalysis2022/nobackup/work/hychim/soapdenovo.fasta \
/proj/genomeanalysis2022/nobackup/work/hychim/spades/scaffolds.fasta

