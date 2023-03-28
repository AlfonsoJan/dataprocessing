library('EnhancedVolcano')

args = commandArgs(trailingOnly = TRUE)

data <- read.table(args[1], header = TRUE, sep = ";")

jpeg(args[2])
EnhancedVolcano(data,
                x = 'logFC', y = 'FDR', lab = rownames(data),
                legendPosition = "none",
                pCutoff = 0.05, FCcutoff = 2,
                title = 'DN3a low population vs DN3a high population',
                subtitle = bquote(italic('FDR <= 0.05 and absolute FC >= 2')),
                labSize = 3, pointSize = 1.5, axisLabSize=10, titleLabSize=12,
                         subtitleLabSize=8, captionLabSize=10)
dev.off()
