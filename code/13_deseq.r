library(DESeq2)
library(tidyverse)

setwd("/home/hychimaa/Documents/uu/2021spring/period4/Genome_analysis/lab_data/htseq/trimmed")

SRR6040092_counts <- read.delim("SRR6040092_counts.txt", header=FALSE) # Musang King leaf
SRR6040093_counts <- read.delim("SRR6040093_counts.txt", header=FALSE) # Musang King root
SRR6040094_counts <- read.delim("SRR6040094_counts.txt", header=FALSE) # Musang King aril2
SRR6040095_counts <- read.delim("SRR6040095_counts.txt", header=FALSE) # Musang King aril1
SRR6040096_counts <- read.delim("SRR6040096_counts.txt", header=FALSE) # Musang King stem
SRR6040097_counts <- read.delim("SRR6040097_counts.txt", header=FALSE) # Musang King aril3
SRR6156066_counts <- read.delim("SRR6156066_counts.txt", header=FALSE) # Monthong aril2
SRR6156067_counts <- read.delim("SRR6156067_counts.txt", header=FALSE) # Monthong aril3
SRR6156069_counts <- read.delim("SRR6156069_counts.txt", header=FALSE) # Monthong aril1

rna<-merge(SRR6040092_counts,SRR6040093_counts,by="V1")
rna<-merge(rna,SRR6040094_counts,by="V1")
rna<-merge(rna,SRR6040095_counts,by="V1")
rna<-merge(rna,SRR6040096_counts,by="V1")
rna<-merge(rna,SRR6040097_counts,by="V1")
rna<-merge(rna,SRR6156066_counts,by="V1")
rna<-merge(rna,SRR6156067_counts,by="V1")
rna<-merge(rna,SRR6156069_counts,by="V1")

names(rna) <- c("V1","leaf","root","aril1","aril2","stem","aril3","aril4","aril5","aril6")
rownames(rna)<-rna[,1]
rna<-rna[,-1]
rna<-rna[-1,]

treat<-c("nonfruit","nonfruit","fruit","fruit","nonfruit","fruit","fruit","fruit","fruit")
metadata <- data.frame(row.names=colnames(rna), treat)

dds <- DESeqDataSetFromMatrix(countData=rna, colData=metadata, design= ~ treat)
dds <- DESeq(dds)

#PCA
rld<-rlog(dds)
colData(dds)
plotPCA(rld,intgroup=c("treat","sizeFactor"))

#MA
res <- results(dds)
plotMA(res)

#Ordering
head(res)
summary(res)
resOrdered <- res[order(res$padj),]
resOrdered=as.data.frame(resOrdered)
head(resOrdered)
resOrdered=na.omit(resOrdered)
write.csv(resOrdered,"resOrdered.csv")

#Heatmap#
select<- head(order(res$padj), 15)  #for top 15 padj genes
nt<-normTransform(dds)
log2.norm.counts<-assay(nt)[select,]
df<-as.data.frame(colData(dds))

library(pheatmap)
pheatmap(log2.norm.counts,cluster_rows = TRUE,show_rownames = FALSE,cluster_cols = TRUE,annotation_col = df)
