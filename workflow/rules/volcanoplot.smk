rule volcanoplot:
    """ create volcano plot"""
    input:
        "results/processed_result.txt"
    output:
        "images/volcanoplot.jpg"
    shell:
        "Rscript scripts/volcanoplot.R {input} {output}"
