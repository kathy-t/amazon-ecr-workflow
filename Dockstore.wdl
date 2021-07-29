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
    docker: "public.ecr.aws/bitnami/python@sha256:4584e7a7c2a420273254c6d1276fa139a4186162d08a308df282da4e0576d725"
  }
}

task publicTagImage2 {
  String name
  
  command {
    echo 'Hello ${name}!'
  }
  output {
    File response = stdout()
  }
  
  runtime {
    docker: "public.ecr.aws/bitnami/python:3.8.11"
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
  call publicTagImage2
}
