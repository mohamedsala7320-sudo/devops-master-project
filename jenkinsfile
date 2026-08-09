pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Fetching code from GitHub...'
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker Image...'
                sh 'docker build -t my-devops-app:latest .'
            }
        }

        stage('Test App') {
            steps {
                echo 'Testing Docker Image...'
                sh 'docker image ls my-devops-app'
            }
        }
    }
}
