pipeline {
  agent any
  stages {
    stage('Checkout Code') {
      steps {
        sh '''cd Lab2
'''
      }
    }

    stage('build') {
      steps {
        sh 'docker build --build-arg JAR_FILE=target/*.war -t myapp .'
      }
    }

  }
}