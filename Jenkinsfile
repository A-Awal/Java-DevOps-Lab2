pipeline {
    agent any

    tools{
    maven 'Maven'
    }
    environment{
      NEW_VERSION = "2.1.0"
      SERVER_CREDENTIAL = credentials('test')
    }

    parameters {
    booleanParam(name:"CONTAINERIZE", defaultValue:true, description:'Yes! if you want to build a docker image')
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn -B -DskipTests clean package'
                sh 'echo ${SERVER_CREDENTIAL}'
                sh "echo ${NEW_VERSION}"
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

        stage('containerize'){
            when{
              expression{ 
                params.CONTAINERIZE == true
              }            
            }

            steps{
              sh 'mvn spring-boot:build-image'
            }
        }
        // stage('Deliver') { 
        //     steps {

        //         sh "chmod +x ./runtest.sh"
        //         sh './runtest.sh' 
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