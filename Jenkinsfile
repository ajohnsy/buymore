pipeline {
    agent any

    stages {
        stage('Checkout from Git Repo') {
            steps {
                checkout([
                    $class: 'GitSCM',
                    branches: [[name: '*/main']],
                    doGenerateSubmoduleConfigurations: false,
                    extensions: [],
                    userRemoteConfigs: [[url: 'https://github.com/ajohnsy/buymore.git']]
                ])
            }
        }
    }


stage ('Build docker image') {
  steps {
      scripts {
             sh 'docker build -t buymore:1 . '
           }
        }
     } 


}
