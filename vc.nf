params.index_dir="/home/ishagupta/nextflow_workflow/variant_calling/data"
params.ref="genome.fa"
params.fastq="/home/ishagupta/nextflow_workflow/variant_calling/data/samples/*_{R1,R2}*"


process map {
    input:
    path index_dir
    val ref
    tuple val(sample), path(fastq)

    output:
    path "*"

    script:
    """
    bwa mem ${index_dir}/${ref} ${fastq} | samtools view -h -b -o ${sample}.bam -
    """
}

workflow{
    index_ch = Channel.fromPath(params.index_dir)
    ref_ch = Channel.of(params.ref)

    fastq_ch = Channel.fromFilePairs(params.fastq)

    map(index_ch, ref_ch, fastq_ch)
    map.out.view()
}