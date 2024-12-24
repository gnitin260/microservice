pipeline {
    agent any
    environment {
        PATH = "/usr/local/bin:$PATH"  // Add Docker path to PATH
    }
    stages {
        stage('Build') {
            steps {
                script {
                    sh '''
                    docker build -t adservice:v1.0 src/adservice/.
                    docker build -t cartservice:v1.0 src/cartservice/.
                    docker build -t checkoutservice:v1.0 src/checkoutservice/.
                    docker build -t adservice:v1.0 src/adservice/.
                    docker build -t adservice:v1.0 src/adservice/.
                    docker build -t adservice:v1.0 src/adservice/.
                    docker build -t adservice:v1.0 src/adservice/.
                    docker build -t adservice:v1.0 src/adservice/.

                    '''

                }
            }
        }
    }
}
