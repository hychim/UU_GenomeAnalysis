# Introduction seminar(Guiding discussion questions)
## Project Planning questions
**What softwares would you use?**
**In what order?**
**What is input and output data?**
**What happens in each step?**

## General questions
**Very briefly, what is the purpose of the study?**
- answer

**What would be the main steps you need to take?**
- answer

**Have you experience with git/github and Uppmax?**
- answer

**What are your thoughts about using github and Uppmax?**
- answer

**What would you need to find out before you can start?**
- **How to use git/github**
  - answer
- **How to use Uppmax**
  - answer
- **What does your data look like**
  - answer

**How would you structure your project plan, what is needed for a good project plan in general?**
- answer

**What is metadata and where can you find it?**
- answer

**What are your expectations of your results vs the actual study?**
- answer

**Where can you find information about how to use a software etc.**
- answer

**What to do when you are stuck, what resources do you have?**
- answer

**How, when and where can you contact the teachers?**
- answer

## Paper specific questions(Paper 4)
**Why is the Durian fruit of interest?**
- answer

**What sequencing technique was used to generate the reads?** 
- answer

**To what extent was the genome sequenced (what resolution)?**
- answer

**What does it mean that the genome is highly heterozygous and repetitive, why could that make genome assembly difficult?**
- answer

**What software was used to annotate the genome and what two strategies were used for gene prediction?**
- answer

**What Gene ontology terms were of interest for the predicted gene models? Why?**
- answer

**What are paleopolyploid events? Why are they interesting to study?**
- answer

**What genes were upregulated and how did they go about finding upregulated genes, what data do they start with etc.?**
- answer

**Why did they compare the transcriptome to other species?**
- answer

**What are the two major groups responsible for the aroma? Why are their functions interesting to study in Durian?**
- answer

**What were the main results and conclusions of this study?**
- answer

------

# Practical information About Software
## Read quality control
- What is the structure of a FASTQ file?
- How is the quality of the data stored in the FASTQ files? How are paired reads
identified?
- How is the quality of your data?
- What can generate the issues you observe in your data? Can these cause any
problems during subsequent analyses?

## Reads preprocessing
- How many reads have been discarded after trimming?
- How can this affect your future analyses and results?
- How is the quality of your data after trimming?
- What do the LEADING, TRAILING and SLIDINGWINDOW options do?

## Genome and Metagenome Assembly
- What information can you get from the plots and reports given by the assembler (if
you get any)?
- What intermediate steps generate informative output about the assembly?
- How many contigs do you expect? How many do you obtain?
- What is the difference between a ‘contig’ and a ‘unitig’?
- What is the difference between a ‘contig’ and a ‘scaffold’?
- What are the k-mers? What k-mer(s) should you use? What are the problems and
benefits of choosing a small kmer? And a big k-mer?
- Some assemblers can include a read-correction step before doing the assembly.
What is this step doing?
- How different do different assemblers perform for the same data?

## Assembly evaluation
- What do measures like N50, N90, etc. mean? How can they help you evaluate the
quality of your assembly? Which measure is the best to summarize the quality of
the assembly (N50, number of ORFs, completeness, total size, longest contig ...)
- How does your assembly compare with the reference assembly? What can have
caused the differences?
- Why do you think your assembly is better/worse than the public one?
- When running metaQuast for a metagenome, it may happen that very few contigs
map back to the reference genomes. Is this expected? Does that mean your assembly is bad? Why?

## Binning
- Metabat uses information about the contig coverage and tetranucleotide frequency
to classify contigs into bins. What are they? Why are they suitable features to use?
- Check how many contigs you have in your metagenome assembly. And look at
how many contigs are in your bins.
- Do the numbers add up? Is this expected? What does it mean?

## Binning evaluation
**How does CheckM estimate completeness of your genomes? And the contamination values? Do you think this reflects the actual completeness and contamination of your genomes?**
- answer

**What is the difference between the estimates of “contamination” and “heterogeneity”?**
- answer

**How precise are the taxonomic ID’s you initially got?**
- answer

**Is it useful to have a rough ID of your assembled genome? Why?**
- answer

## Annotation
**What types of features are detected by the software? Which ones are more reliable a priori?**
- answer

**How many features of each kind are detected in your contigs? Do you detect the same number of features as the authors? How do they differ?**
- answer

**Why is it more difficult to do the functional annotation in eukaryotic genomes?**
- answer

**How many genes are annotated as ‘hypothetical protein’? Why is that so? How would you tackle that problem?**
- answer

**How can you evaluate the quality of the obtained functional annotation?**
- answer

**How comparable are the results obtained from two different structural annotation softwares?**
- answer

## Homology search
**How relevant is the output format that you choose?**
- answer

**How do the resulting hits vary when you change the minimum e-value?**
- answer

**How is the alignment score calculated?**
- answer

**How important is the number of threads when you blast against a database, or against a particular sequence?**
- answer

## Phylogenetic placement
**How precise are the taxonomic ID’s you got?**
- answer

**How could you improve them?**
- answer

**What are the implications of erroneous IDs to the analyses?**
- answer

## Mapping
**What percentage of your reads map back to your contigs? Why do you think that is?**
- answer

**What potential issues can cause mRNA reads not to map properly to genes in the
chromosome? Do you expect this to differ between prokaryotic and eukaryotic
projects?**
- answer

**What percentage of reads map to genes?**
**How many reads do not map to genes? What does that mean? How does that relate to the type of sequencing data you are mapping?**
**What do you interpret from your read coverage differences across the genome?**
**Do you see big differences between replicates?**

## Post-mapping analyses
**What is the structure of a SAM file, and how does it relate to a BAM file?**
**What is the structure of vcf and bcf files?**
**How many SNPs and INDELs do you get?**
**How is the quality of those variants?**
**What is the difference between the variant quality, the mapping quality and the fastq quality?**
**How are these variantes distributed along the genome?**

## Read counting
**What is the distribution of the counts per gene? Are most genes expressed? How  many counts would indicate that a gene is expressed?**
**In the metagenomics project, the data doesn’t offer enough statistical power for a differential expression analysis. Why not? What can you still tell from the data only from the read counts?**

## Expression analyses
**If your expression results differ from those in the published article, why could it be?**

**How do the different samples and replicates cluster together?**

**What effect and implications has the p-value selection in the expression results?**

**What is the q-value and how does it differ from the p-value? Which one should youuse to determine if the result is statistically significant?**

**Do you need a normalization step? What would you normalize against? DoesDESeq do it?**

**What would you do to increase the statistical power of your expression analysis?**

**In the metagenomics project, the data doesn’t offer enough statistical power for adifferential expression analysis. Why not? What can you still tell from the data?**

