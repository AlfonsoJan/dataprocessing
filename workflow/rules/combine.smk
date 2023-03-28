configfile: "config/config.yaml"

rule combine:
    """ create combine .txt file """
    input:
        expand("resources/{file}", file=config["files"])
    output:
        "results/result.txt"
    shell:
        "Rscript scripts/combineData.R {input} {output}"
