pipeline {
    agent any

    environment {
        D_IMG_NAME = 'devops-mysql'
        D_IMG_TAG = '0.0.1'
    }
    

    stages {
        stage('Buil') {
            steps {
                echo 'Building Docker Image..'
                script {
                    sh "docker build -t ${D_IMG_NAME}:${D_IMG_TAG} ."
                    sh "docker version"
                }
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
