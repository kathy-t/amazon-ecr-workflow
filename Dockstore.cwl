cwlVersion: v1.0
class: Workflow
doc: "This is a description"

dct:creator:
  foaf:name: Test User
  foaf:mbox: mailto:test@dockstore.org

inputs:
  input_file: File
outputs:
  output_file:
    type: File
    outputSource: md5sum/output_file
steps:
  md5sum:
    run: dockstore-tool-md5sum.cwl
    in:
      input_file: input_file
    out: [output_file]
  amazonTagImage:
    run:
      cwlVersion: v1.1
      class: CommandLineTool
      baseCommand: echo
      requirements:
      - class: DockerRequirement
        dockerPull: public.ecr.aws/n3r3k9w6/kathy-t:1
      inputs:
        message:
          type: string
          inputBinding:
            position: 1
      outputs: []
  amazonDigestImage:
    run:
      cwlVersion: v1.0
      class: CommandLineTool
      baseCommand: echo
      requirements:
      - class: DockerRequirement
        dockerPull: public.ecr.aws/n3r3k9w6/kathy-t@sha256:f8e402ff401fedb7680e59b8a2a9a944ab1168267e6c30fb39dfd83df2be6fa0
      inputs:
        message:
          type: string
          inputBinding:
            position: 1
      outputs: []
