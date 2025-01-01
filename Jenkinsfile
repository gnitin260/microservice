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
                    docker build -t gnitin260/adservice:v1.0 src/adservice/.
                    docker build -t gnitin260/cartservice:v1.0 src/cartservice/src/.
                    docker build -t gnitin260/checkoutservice:v1.0 src/checkoutservice/.
                    docker build -t gnitin260/currencyservice:v1.0 src/currencyservice/.
                    docker build -t gnitin260/emailservice:v1.0 src/emailservice/.
                    docker build -t gnitin260/frontend:v1.0 src/frontend/.
                    docker build -t gnitin260/loadgenerator:v1.0 src/loadgenerator/.
                    docker build -t gnitin260/paymentservice:v1.0 src/paymentservice/.
                    docker build -t gnitin260/productcatalogservice:v1.0 src/productcatalogservice/.
                    docker build -t gnitin260/recommendationservice:v1.0 src/recommendationservice/.
                    docker build -t gnitin260/shippingservice:v1.0 src/shippingservice/.
                    docker build -t gnitin260/shoppingassistantservice:v1.0 src/shoppingassistantservice/.
                    '''

                }
            }
        }
         stage('Push') {
            steps {
                script {
                    sh '''
                    docker push gnitin260/adservice:v1.0
                    docker push gnitin260/cartservice:v1.0
                    docker push gnitin260/checkoutservice:v1.0
                    docker push gnitin260/currencyservice:v1.0
                    docker push gnitin260/emailservice:v1.0
                    docker push gnitin260/frontend:v1.0
                    docker push gnitin260/loadgenerator:v1.0
                    docker push gnitin260/paymentservice:v1.0
                    docker push gnitin260/productcatalogservice:v1.0
                    docker push gnitin260/recommendationservice:v1.0
                    docker push gnitin260/shippingservice:v1.0
                    docker push gnitin260/shoppingassistantservice:v1.0
                    '''

                }
            }
        }
    }
}
