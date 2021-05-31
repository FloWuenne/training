nextflow.enable.dsl=2

params.reads = 'data/reads/*_{1,2}.fq.gz'
params.outdir = 'my-results'

samples_ch = Channel.fromFilePairs(params.reads, flat: true)

process foo {
  publishDir "$params.outdir/$sampleId/", pattern: '*.fq'
  publishDir "$params.outdir/$sampleId/counts", pattern: "*_counts.txt"
  publishDir "$params.outdir/$sampleId/outlooks", pattern: '*_outlook.txt'

  input:
    tuple val(sampleId), file('sample1.fq.gz'), file('sample2.fq.gz')
  output:
    file "*"
  script:
  """
    < sample1.fq.gz zcat > sample1.fq
    < sample2.fq.gz zcat > sample2.fq

    awk '{s++}END{print s/4}' sample1.fq > sample1_counts.txt
    awk '{s++}END{print s/4}' sample2.fq > sample2_counts.txt

    head -n 50 sample1.fq > sample1_outlook.txt
    head -n 50 sample2.fq > sample2_outlook.txt
  """
}

workflow{

  out_channel = foo(samples_ch)

}

