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
                def imageTest= docker.build("my-python-test",  "-f Dockerfile.test .")
                imageTest.inside{
                    sh 'python test_main.py'
                }
            }
        }
    }
}