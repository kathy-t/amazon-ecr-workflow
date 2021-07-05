task publicTagImage {
  String name
  
  command {
    echo 'Hello ${name}!'
  }
  output {
    File response = stdout()
  }
  
  runtime {
    docker: "public.ecr.aws/ubuntu/ubuntu:18.04"
  }
}

task publicDigestImage {
  String name
  
  command {
    echo 'Hello ${name}!'
  }
  output {
    File response = stdout()
  }
  
  runtime {
    docker: "public.ecr.aws/ubuntu/ubuntu@sha256:faa7efd33c53046df8e348cf2750c68ad70fb034dff23cc40756eb39e5c064f2"
  }
}

workflow test {
  call publicTagImage
  call publicDigestImage
  
}
