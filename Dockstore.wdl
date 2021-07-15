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

task publicNoTagImage {
  String name
  
  command {
    echo 'Hello ${name}!'
  }
  output {
    File response = stdout()
  }
  
  runtime {
    docker: "public.ecr.aws/ubuntu/ubuntu"
  }
}

task privateTagImage {
  String name
  
  command {
    echo 'Hello ${name}!'
  }
  output {
    File response = stdout()
  }
  
  runtime {
    docker: "467982390456.dkr.ecr.us-east-1.amazonaws.com/kathy-test:1"
  }
}

task privateDigestImage {
  String name
  
  command {
    echo 'Hello ${name}!'
  }
  output {
    File response = stdout()
  }
  
  runtime {
    docker: "467982390456.dkr.ecr.us-east-1.amazonaws.com/kathy-test@sha256:f8e402ff401fedb7680e59b8a2a9a944ab1168267e6c30fb39dfd83df2be6fa0"
  }
}

workflow test {
  call publicTagImage
  call publicDigestImage
}
