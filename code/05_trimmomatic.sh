# Trimmomatic
java -jar /sw/apps/bioinfo/trimmomatic/0.36/rackham/trimmomatic-0.36.jar PE \
-trimlog trimmomatic_log \
/home/hychim/private/UU_GenomeAnalysis/data/raw_data/transcriptome/untrimmed/SRR6040095_scaffold_11.1.fastq.gz \
/home/hychim/private/UU_GenomeAnalysis/data/raw_data/transcriptome/untrimmed/SRR6040095_scaffold_11.2.fastq.gz \
-baseout SR6040095_scaffold_11_trimmed \
LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
