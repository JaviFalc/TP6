pipeline {
    agent any

    environment {
        DHUB_NAME = 'falcojx2'
        DHUB_TOKEN = 'dckr_pat__gO5wz-tfLB8qHNNtk6GW6yAQGk'
        D_IMG_NAME = 'falcojx2/devops-mysql'
        D_IMG_TAG = '0.0.1'
    }
    

    stages {
        stage('Buil') {
            steps {
                echo 'Building Docker Image..'
                script {
                    sh "docker login --username ${DHUB_NAME} --password $DHUB_TOKEN"
                    sh "docker pull ${D_IMG_NAME}:${D_IMG_TAG}"
                    sh "docker build -t ${D_IMG_NAME}:${D_IMG_TAG} ."
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
