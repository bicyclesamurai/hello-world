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

  }
}