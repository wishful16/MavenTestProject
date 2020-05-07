pipeline {
  environment {
    registry = "<wishfulthinker999>/<calculatorrepo999>"
    registryCredential = 'dockerhubcred'
    dockerImage = ''
    dockerImageLatest = ''
  }
  tools {
          maven 'Maven 3.6.3'
      }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
//         git '<https://github.com/wishful16/MavenTestProject>'
            git 'https://github.com/wishful16/MavenTestProject'
      }
    }
    stage('Build Executable Jar'){
        steps {
//              sh 'mvn clean test package'
            sh label: '', script: 'mvn clean test package'
        }
    }
    // stage('Building image') {
    //   steps{
    //     script {
    //       dockerImage = docker.build registry + ":$BUILD_NUMBER"
    //       dockerImageLatest = docker.build registry + ":latest"
    //     }
    //   }
    // }
    // stage('Deploy Image') {
    //   steps{
    //     script {
    //       docker.withRegistry( '', registryCredential ) {
    //         dockerImage.push()
    //         dockerImageLatest.push()
    //       }
    //     }
    //   }
    // }
    // stage('Remove Unused docker image') {
    //   steps{
    //     sh "docker rmi $registry:$BUILD_NUMBER"
    //   }
    // }

  }

}