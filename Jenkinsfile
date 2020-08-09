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
                container('helm') {
                    echo 'Hello, World'
                    sh 'sleep 60m'
                }
            }
        }
    }
}