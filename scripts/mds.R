library('PoiClaClu')
library('ggplot2')
library('DESeq2')

args = commandArgs(trailingOnly = TRUE)

counts <- read.table(args[1], header = TRUE, sep = ";")

DN3a.high <- c(1,4,7,10)
DN3b.pop <- c(2,5,8,11)
DN3a.low <- c(3,6,9,12)
DN3_rep_order <- c(DN3a.high, DN3b.pop, DN3a.low)

ddsMat <- DESeqDataSetFromMatrix(
  countData = counts[,DN3_rep_order],
  colData=data.frame(samples=names(counts[,DN3_rep_order])),
  design=~1)

dds <- assay(ddsMat)
poisd <- PoissonDistance( t(dds) )
samplePoisDistMatrix <- as.matrix(poisd$dd)
mdsPoisData <- data.frame( cmdscale(samplePoisDistMatrix) )
names(mdsPoisData) <- c('x_coord', 'y_coord')

jpeg(args[2])
groups <- factor(rep(1:3, each=4), 
                 labels = c("DN3a", "DN3b", "DN3c"))
coldata <- names(counts[,DN3_rep_order])
ggplot(mdsPoisData, aes(x_coord, y_coord, label = coldata, color = groups)) + 
  geom_text(size = 4) +
  ggtitle('Multi Dimensional Scaling') +
  labs(x = "Poisson Distance", y = "Poisson Distance") +
  theme_bw()
dev.off()