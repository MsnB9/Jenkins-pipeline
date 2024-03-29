pipeline {
    agent any
    environment {
        DOCKERHUB_USERNAME = 'msnb98'
        DOCKERHUB_PASSWORD = 'Docker1234'
    }
    stages {
        stage('Clone repository') {
            steps {
                git 'https://github.com/MsnB9/Jenkins-pipeline.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('my-webapp:${BUILD_NUMBER}')
                }
            }
        }
        stage('Push to Docker Hub') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', 'dockerhub_credentials') {
                        docker.image('my-webapp:${BUILD_NUMBER}').push()
                    }
                }
            }
        }
    }
}
