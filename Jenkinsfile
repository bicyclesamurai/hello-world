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
        sh '''sh \'echo downloading Tenable CS CLI\'
sh \'wget https://downloads.accurics.com/cli/latest/accurics_linux -O tcs-iac-scanner\'
sh \'chmod +x tcs-iac-scanner\'
sh \'./tcs-iac-scanner init\'
sh \'./tcs-iac-scanner scan -mode=pipeline -appurl=https://cloud.tenable.com/cns -token=accessKey=791ee2f2cdf6084ff409b8d2944fc27f6290e4748f4b34606e48ae19abf4fb67;secretKey=9dfde5f5354569800a15c5e1322200b6afa05dc76815f29005278bdf88ba1e6b -fail -project=helloWorld\''''
      }
    }

  }
}