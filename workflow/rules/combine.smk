rule combine:
    """ create combine .txt file """
    input:
        expand("resources/{file}", file=COUNT_FILES)
    output:
        "results/result.txt"
    shell:
        "Rscript scripts/combineData.R {input} {output}"
