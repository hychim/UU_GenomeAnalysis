#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 2:00:00
#SBATCH -J soapdenovo_11
#SBATCH --mail-type=ALL
#SBATCH --mail-user ho-yeung.chim.2766@student.uu.se


# Load modules
module load bioinfo-tools
module load soapdenovo

/sw/bioinfo/SOAPdenovo/2.04-r240/rackham/bin/SOAPdenovo-127mer all \
-s /domus/h1/hychim/private/UU_GenomeAnalysis/code/93_soapdenovo.config \
-K 23 \
-R \
-o /proj/genomeanalysis2022/nobackup/work/hychim/soapdenovo/scaffold11
