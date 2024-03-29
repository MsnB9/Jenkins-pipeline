pipeline {
    agent any
    stages {
        stage('Clone repository') {
            steps {
                git 'https://github.com/MsnB9/Jenkins-pipeline.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('msnb98/jenkinspipeline:${BUILD_NUMBER}')
                }
            }
        }
        stage('Push to Docker Hub') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', 'dockerhub_credentials') {
                        docker.image('msnb98/jenkinspipeline:${BUILD_NUMBER}').push()
                    }
                }
            }
        }
    }
}
