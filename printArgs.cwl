cwlVersion: v1.2

$graph:
  # Workflow entrypoint
  - class: Workflow
    doc: app to print given arguments
    id: print_args
    label: print some args
    inputs: []
    outputs: []

    steps:
      print:
        run: "#print"
        in: []
        out: []

  # printArgs.py
  - class: CommandLineTool
    id: print
    #baseCommand: ['python', 'printArgs.py']
    inputs: []
    outputs: []
    requirements:
      DockerRequirement:
        dockerPull: tjellicoetpzuk/print:latest
