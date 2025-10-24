pipeline {
    agent any
    properties([
        parameters([
            string(name: 'submodule', defaultValue: ''),
            string(name: 'submodule_branch', defaultValue: ''),
            string(name: 'commit_sha', defaultValue: ''),
        ])
    ])
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