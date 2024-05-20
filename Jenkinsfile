pipeline {
    agent any
    // options {
    //     skipStagesAfterUnstable()
    // }
    tools{
    maven 'Maven'
  }
    stages {
        stage('Build') {
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
            post {
                always {
                    junit 'target/surefire-reports/*.xml'
                }
            }
        }
        // stage('Deliver') { 
        //     steps {
        //         sh './jenkins/scripts/deliver.sh' 
        //     }
        // }
    }
}

// pipeline {
//   agent any
//   environment{
//     NEW_VERSION = "2.1.0"
//     SERVER_CREDENTIAL = credentials('')
//   }
//   tools{
//     maven 'Maven'
//     gradle
//   }
//   parameters{
//     string(name:"", default, description:"")
//     choice(name:"", choices:['1','2'], description:'')
//     booleanParam(name:"", default:true, description:'')

//   }
//   stages {
//     stage('Build Test') {
//       steps {
//         sh 'docker build -f ./test.Dockerfile -t "lab2-test" .'
//       }
//     }

//     stage('Build App') {
//       steps {
//         sh 'docker build -f ./production.Dockerfile -t "lab2-pro" .'
//       }
//     }

//     stage('Run App') {
//       when{
//         expression{
//           BRANCH_NAME == "dev" && CODE_CHANGES == true
//         }
//       }
//       when{
//         expression{
//           BRANCH_NAME == "de v"
//         }
//       }
//       steps {
//       withCredentials([
//         usernamePassword(credentials:"", usernameVariable:USER, passwordVariable:PWD)
//       ])
//         sh ' docker-compose'
//       }
//     }

//     post{
//       always{

//       }
//       failure{

//       }
//       success{

//       }
//     }


//     //env-vars.html

//   }
// }