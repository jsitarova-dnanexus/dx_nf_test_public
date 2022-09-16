#!/usr/bin/env nextflow
nextflow.enable.dsl=2 

params.word = "Hello"

process sayHello {
  input: 
    val x
  output:
    stdout
  script:
    """
    echo '$x world test branch!'
    """
}

workflow {
  sayHello(params.word) | view
}
