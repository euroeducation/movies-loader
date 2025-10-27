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
                script {
                    def imageTest = docker.build("my-python-test",  "-f Dockerfile.test .")
                    sh "docker run --rm -v ${PWD}/reports:/app/reports my-python-test"
                    junit "${PWD}/reports/*.xml"
                }
            }
        }
    }
}
