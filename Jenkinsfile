pipeline {
  agent any
  stages {
    stage('checkout_code') {
      steps {
        git(branch: 'main', url: 'https://github.com/bicyclesamurai/hello-world')
      }
    }

    stage('list_files') {
      steps {
        sh 'ls -al'
      }
    }

    stage('scan') {
      steps {
        sh 'docker save docker101tutorial | docker run -e TENABLE_ACCESS_KEY=791ee2f2cdf6084ff409b8d2944fc27f6290e4748f4b34606e48ae19abf4fb67 -e TENABLE_SECRET_KEY=9dfde5f5354569800a15c5e1322200b6afa05dc76815f29005278bdf88ba1e6b -e IMPORT_REPO_NAME=myRepo -e CHECK_POLICY=TRUE -i tenableio-docker-consec-local.jfrog.io/cs-scanner:latest inspect-image php'
      }
    }

  }
}