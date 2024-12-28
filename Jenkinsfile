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
                    docker build -t cartservice:v1.0 src/cartservice/src/.
                    docker build -t checkoutservice:v1.0 src/checkoutservice/.
                    docker build -t adservice:v1.0 src/currencyservice/.
                    docker build -t adservice:v1.0 src/emailservice/.
                    docker build -t adservice:v1.0 src/frontend/.
                    docker build -t adservice:v1.0 src/loadgenerator/.
                    docker build -t adservice:v1.0 src/paymentservice/.
                    docker build -t adservice:v1.0 src/productcatalogservice/.
                    docker build -t adservice:v1.0 src/recommendationservice/.
                    docker build -t adservice:v1.0 src/shippingservice/.
                    docker build -t adservice:v1.0 src/shoppingassistantservice/.
                    '''

                }
            }
        }
    }
}
