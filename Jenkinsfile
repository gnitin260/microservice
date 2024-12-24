pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    docker build -t adservice:v1.0 src/adservice
                }
            }
        }
    }
}
