pipeline {
  agent any
  stages {
    stage('Checkout Code') {
      steps {
      ba '''echo %MAVEN_HOME%'''
      }
    }

    stage('build') {
      steps {
        ba 'docker build --build-arg JAR_FILE=target/*.war -t myapp .'
      }
    }

  }
}