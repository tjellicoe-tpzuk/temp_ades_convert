cwlVersion: v1.2
$namespaces:
  s: https://schema.org/
schemas:
  - http://schema.org/version/9.0/schemaorg-current-http.rdf
s:softwareVersion: 0.1.2

$graph:
  # Workflow entrypoint
  - class: Workflow
    doc: app to print given arguments
    id: print_args
    label: print some args
    inputs: []
    outputs:
      outFile:
        outputSource: print/outFile
        type: File

    steps:
      print:
        run: "#print"
        in: []
        out:
        - outFile

  # printArgs.py
  - class: CommandLineTool
    id: print
    #baseCommand: ['python', 'printArgs.py']
    inputs: []
    outputs:
      outFile:
        type: File
        outputBinding:
          glob: "*.txt"
    requirements:
      DockerRequirement:
        dockerPull: tjellicoetpzuk/print:latest
