def imageName = 'my-python'
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
                    def imageTest = docker.build("${imageName}-test",  "-f Dockerfile.test .")
                    imageTest.inside{
                        sh 'python test_main.py'
                    }
                    
                }
            }
        }
    }
}
