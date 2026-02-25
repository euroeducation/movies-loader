def imageName = 'my-python'

def commitID() {
   sh 'git rev-parse HEAD > .git/commitID'
   def commitID = readFile('.git/commitID').trim()
   sh 'rm .git/commitID'
   commitID
}

pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
       stage('Print'){
            steps {
                script {
                   if (BRANCH_NAME == 'develop') {
                      println "========>done!!."
                  }
                }
            }
        }

       /*
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

        stage('Build'){
            steps {
                script {
                   docker.build('my-python')
                   if (BRANCH_NAME == 'develop') {
                      println "========>done!."
                  }
                }
            }
        }
        */
        
    }
}
