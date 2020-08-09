pipeline {
    agent {
        kubernetes {
            defaultContainer 'jnlp'
            yamlFile 'build.yaml'
        }
    }
    stages {
        stage('Build') {
            steps {
                container('jnlp') {
                    sh 'sleep 60m'
                }
            }
        }
    }
}