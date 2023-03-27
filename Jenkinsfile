pipeline {
    agent any
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
                sh 'docker build -t rajeeb007/docker-helloworld1:newone .'
            }
        }
        stage('docker login') {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
        
    } 
    
}