pipeline {
  agent any
  stages {
    stage('Checkout Code') {
      steps {
        sh '''cd Lab2
'''
      }
    }

    stage('run') {
      steps {
        sh 'docker run -p 8080:8080 myapp'
      }
    }

  }
}