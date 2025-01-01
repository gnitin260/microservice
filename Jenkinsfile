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
                    docker build -t test:5001/adservice:v1.0 src/adservice/.
                    docker build -t test:5001/cartservice:v1.0 src/cartservice/src/.
                    docker build -t test:5001/checkoutservice:v1.0 src/checkoutservice/.
                    docker build -t test:5001/currencyservice:v1.0 src/currencyservice/.
                    docker build -t test:5001/emailservice:v1.0 src/emailservice/.
                    docker build -t test:5001/frontend:v1.0 src/frontend/.
                    docker build -t test:5001/loadgenerator:v1.0 src/loadgenerator/.
                    docker build -t test:5001/paymentservice:v1.0 src/paymentservice/.
                    docker build -t test:5001/productcatalogservice:v1.0 src/productcatalogservice/.
                    docker build -t test:5001/recommendationservice:v1.0 src/recommendationservice/.
                    docker build -t test:5001/shippingservice:v1.0 src/shippingservice/.
                    docker build -t test:5001/shoppingassistantservice:v1.0 src/shoppingassistantservice/.
                    '''

                }
            }
        }
    }
}
