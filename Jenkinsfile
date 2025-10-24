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
                sh "docker build -t my-python-test -f Dockerfile.test ."
                sh "docker run --rm my-python-test"
            }
        }
    }
}