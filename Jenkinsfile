pipeline {
    agent any

    stages {
        stage('Clone Code') {
            steps {
                git 'https://github.com/lokesh6509/myweb.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Docker Build & Push') {
            steps {
                sh 'docker build -t lokesh6509/myapp:latest .'
                sh 'docker push lokesh6509/myapp:latest'
            }
        }
        stage('Deploy to EKS') {
            steps {
                sh 'kubectl apply -f deployment.yaml'
            }
        }
    }
}

