rule mds:
    """ create mds jpg """
    input:
        file="results/result.txt",
        image="images/heatmap.jpg"
    output:
        "images/mds.jpg"
    shell:
        "Rscript scripts/mds.R {input.file} {output}"