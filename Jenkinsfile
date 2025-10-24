pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Unit Tests'){
            steps {
                sh "docker build -t ${imageName}-test -f Dockerfile.test ."
                sh "docker run --rm ${imageName}-test"
            }
        }
    }
}