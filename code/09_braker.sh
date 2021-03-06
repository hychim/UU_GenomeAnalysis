#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 8
#SBATCH -t 1:00:00
#SBATCH -J braker_11
#SBATCH --mail-type=ALL
#SBATCH --mail-user ho-yeung.chim.2766@student.uu.se

# Load modules
module load bioinfo-tools
module load braker/2.1.1_Perl5.24.1
module load augustus/3.2.3_Perl5.24.1
module load bamtools/2.5.1
module load blast/2.9.0+
module load GenomeThreader/1.7.0
module load samtools/1.8
module load GeneMark/4.33-es_Perl5.24.1

chmod a+w -R /home/hychim/augustus_config/species/

braker.pl \
--AUGUSTUS_CONFIG_PATH=/home/hychim/augustus_config \
--AUGUSTUS_BIN_PATH=/sw/bioinfo/augustus/3.4.0/snowy/bin \
--AUGUSTUS_SCRIPTS_PATH=/sw/bioinfo/augustus/3.4.0/snowy/scripts \
--GENEMARK_PATH=/sw/bioinfo/GeneMark/4.33-es/snowy \
--species=Durio_zibethinus \
--genome=/home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/masker/20220408_pilon_out.fasta.masked \
--bam=/home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/star/merged.bam \
--cores=8 \
--workingdir=/home/hychim/private/UU_GenomeAnalysis/result/genome_assembly/braker \
--gff3 \
--softmasking
