# dataprocessing


## Abstract
This study is about the development of T-cells if critically dependent on successful rearrangement of antigen-receptors. Only cells that successfully pass the bèta-selection checkpoint continue in development with functional rearrangement. However, it is not clear what the fate of non-selected T-cell is. In this study, CD27 down-regulation is identified at the DN3 stage to be a marker for cells that have failed rearrangement of the bèta-chain and will therefore undergo apoptosis. Gene expression analysis revealed high expression of the transcription factor Duxbl within this population. The results of this study are, that CD27 down-regulation is associated with an unsuccessful bèta-chain rearrangement and/or pre-TCR formation. On the other hand, high CD27 expression is associated with pre-TCR signaling and successful passage through the bèta-selection checkpoint.

## Data set
Here are links for the public data set with the article that were used.  
[Article](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6400535/)  
[GSE118028_gene_counts](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE118028)  
[GSE118057_gene_counts](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE118057)  

## Desired Result

I want to replicate part of the study. I want to recreate and compare 6 specific figures.

- A heat map illustrating the results of the gene set enrichment analysis of DN3a CD27low versus DN3b cells using gene sets from the hallmark collection of the Molecular Signatures Database (MSigDB). Only sets containing >10 genes and with a false discovery rate (FDR) <5% are illustrated.
- A heat map displaying the centered gene expression levels of the top 50 significantly overexpressed genes and top 50 significantly under-expressed genes in DN3a CD27low compared with DN3b cells. Genes are clustered using hierarchical clustering.
- A heat map displaying the centered gene expression levels of the top 10 transcription factors with
the highest absolute fold change among differentially expressed genes (FDR <0.05) between DN3a CD27low and DN3b cells.
- A volcano plot of differentially expressed genes between DN3a CD27low and DN3b cells.
- Normalized log2CPM obtained from the bulk RNA-seq of Duxbl in DN3a CD27high, DN3a CD27low, and DN3b cells.
- Relative expression obtained by qPCR (F) of Duxbl in DN3a CD27high, DN3a CD27low, and DN3b cells.

