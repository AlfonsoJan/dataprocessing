library('edgeR')

args = commandArgs(trailingOnly = TRUE)

counts <- read.table(args[1], header = TRUE, sep = ";")

DN3a.high <- c(1,4,7,10)
DN3b.pop <- c(2,5,8,11)
DN3a.low <- c(3,6,9,12)
DN3_rep_order <- c(DN3a.high, DN3b.pop, DN3a.low)
DN3_rep <- 1:12
WT.control <- 13:16
TG.control <- 17:20

cpm_log <- cpm(counts[,DN3_rep], log = TRUE)
mean_log2_cpm <- apply(cpm_log, 1, mean)
expr_cutoff <- 0.005
counts.filtered <- counts[mean_log2_cpm > expr_cutoff, ]
counts.filtered.cpm <- as.data.frame(cpm(counts.filtered[,DN3_rep], log = TRUE))

group <- factor(c(1,1,1,1,2,2,2,2), labels = c("DN3a_high", "DN3a_low"))
design <- model.matrix(~group)
y <- DGEList(counts=counts.filtered[,c(DN3a.high, DN3a.low)],group=group)
y <- calcNormFactors(y)
y <- estimateDisp(y, design)
et <- exactTest(y)
res.high.low <- topTags(et, n = nrow(counts.filtered[,c(DN3a.high, DN3a.low)]),
                        sort.by = "none")
                        
write.table(res.high.low$table, file = args[2], sep = ";")
