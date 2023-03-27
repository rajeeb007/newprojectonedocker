pipeline {
    aget any
    environment {
        
        DOCKERHUB_CREDENTIALS = credentials('docker_key')
    }
    stages{
        stage('git checkout') {
            steps {
                git branch: 'main', credentialsId: 'raji_git', url: 'https://github.com/rajeeb007/newprojectonedocker.git'
            }
        }
        
        stage('docker build') {
            steps {
                sh 'docker build -t rajeeb007/docker-helloworld1:new one .'
            }
        }
        
    } 
    
}