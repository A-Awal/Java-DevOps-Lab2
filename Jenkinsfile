pipeline {
  agent any
  stages {
    stage('Run Tests') {
      steps {
        ba 'docker build -f ./test.Dockerfile -t "lab2-test" .'
      }
    }

    stage('Build App') {
      steps {
        ba 'docker build -f ./production.Dockerfile -t "lab2-pro" .'
      }
    }

    stage('Run App') {
      steps {
        ba ' docker run -p 8080:8080 lab2-pro'
      }
    }


    

  }
}