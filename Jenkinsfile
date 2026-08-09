pipeline {
    agent any

    environment {
        DOCKER_USER    = 'mosala7320'
        IMAGE_NAME     = 'my-devops-app'
        TERRAFORM_PATH = 'C:\\Users\\user\\AppData\\Local\\Microsoft\\WinGet\\Links\\terraform.exe'
    }

    stages {
        stage('Checkout') {
            steps {
                echo 'Fetching code from GitHub...'
                checkout scm
            }
        }

        stage('Infrastructure via Terraform') {
            steps {
                echo 'Provisioning Infrastructure with Terraform...'
                dir('terraform') {
                    bat "${TERRAFORM_PATH} init"
                    bat "${TERRAFORM_PATH} apply -auto-approve"
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker Image...'
                bat "docker build -t ${DOCKER_USER}/${IMAGE_NAME}:latest ."
            }
        }

        stage('Push Image to Docker Hub') {
            steps {
                echo 'Logging in and Pushing Image to Docker Hub...'
                withCredentials([usernamePassword(credentialsId: 'docker-hub-credentials', usernameVariable: 'DOCKER_USER_VAR', passwordVariable: 'DOCKER_PASS_VAR')]) {
                    bat 'docker login -u %DOCKER_USER_VAR% -p %DOCKER_PASS_VAR%'
                    bat "docker push ${DOCKER_USER}/${IMAGE_NAME}:latest"
                }
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                echo 'Deploying Application to Kubernetes...'
                bat 'kubectl apply -f k8s/'
            }
        }

        stage('Test App') {
            steps {
                echo 'Testing Docker Image...'
                bat "docker image ls ${DOCKER_USER}/${IMAGE_NAME}"
            }
        }
    }
}