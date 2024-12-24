pipeline { 
    agent any 
    stages {
        stage('Build') { 
            steps { 
                echo "Build_Adservice"
                docker build src/adservice/Dockerfile
            }
        }
    }
}
