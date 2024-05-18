pipeline {
  agent any
  stages {
    stage('Checkout Code') {
      steps {
      sh '''echo $MAVEN_HOME'''
      }
      steps {
      sh '''$MAVEN_HOME/mvn install'''
      }
    }

    stage('build') {
      steps {
        powershell 'docker build --build-arg JAR_FILE=target/*.war -t myapp .'
      }
    }

  }
}