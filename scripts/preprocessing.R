args = commandArgs(trailingOnly = TRUE)

GSE118028.counts <- read.table(file = args[1], 
                               sep = '\t', header = TRUE)
names(GSE118028.counts)[1] <- c('id')
GSE118057.counts <- read.table(file=args[2],
                               sep='\t', header=T)
names(GSE118057.counts)[1] <- c('id')
counts <- merge(GSE118028.counts, GSE118057.counts, by.x = c('id', 'width'), 
                by.y=c('id', 'width'), sort = FALSE)
counts[is.na(counts)] <- 0
row.names(counts) <- counts$id
counts <- counts[, -c(1:2)]

DN3a.high <- c(1,4,7,10)
DN3b.pop <- c(2,5,8,11)
DN3a.low <- c(3,6,9,12)
DN3_rep_order <- c(DN3a.high, DN3b.pop, DN3a.low)
DN3_rep <- 1:12
WT.control <- 13:16
TG.control <- 17:20