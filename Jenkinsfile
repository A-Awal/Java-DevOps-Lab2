pipeline {
  agent any
  stages {
    stage('Checkout Code') {
      steps {
        sh 'docker build --build-arg JAR_FILE=target/*.war -t myapp .'
      }
    }

  }
}