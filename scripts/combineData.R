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
write.table(counts, file = args[3], sep = ";")
