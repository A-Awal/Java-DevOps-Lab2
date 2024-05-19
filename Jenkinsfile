pipeline {
  agent any
  stages {
    stage('Run Tests') {
      steps {
        sh 'docker build -f ./test.Dockerfile -t "lab2-test" .'
      }
    }

    stage('Build App') {
      steps {
        sh 'docker build -f ./production.Dockerfile -t "lab2-pro" .'
      }
    }

    stage('Run App') {
      steps {
        sh ' docker run -p 8080:8080 lab2-pro'
      }
    }


    

  }
}