pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                container('maven') {
                    sh 'sleep 60m'
                }
            }
        }
    }
}