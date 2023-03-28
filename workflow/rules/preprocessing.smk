rule preprocessing:
    """ create combine .txt file """
    input:
        file="results/result.txt",
        image="images/mds.jpg"
    output:
        "results/processed_result.txt"
    shell:
        "Rscript scripts/preprocessing.R {input.file} {output}"
