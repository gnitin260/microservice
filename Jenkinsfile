pipeline { 
    agent any 
    stages {
        stage('Build') { 
            steps { 
                echo "Build_Adservice"
                docker build -t adservice:v1.0 src/adservice/.    
                docker build -t adservice:v1.0 src/cartservice/. 
            }
        }
    }
}
