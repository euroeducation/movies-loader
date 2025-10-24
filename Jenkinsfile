pipeline {
    agent any
    def imageTest
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Unit Tests'){
            steps {
                script {
                    imageTest = docker.build("my-python-test",  "-f Dockerfile.test .")
                    
                }
            }
        }
    }
}