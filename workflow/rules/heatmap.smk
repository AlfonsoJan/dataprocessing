rule heatmap:
    """ create heatmap jpg """
    input:
        "results/result.txt"
    output:
        "images/heatmap.jpg"
    shell:
        "Rscript scripts/heatmap.R {input} {output}"