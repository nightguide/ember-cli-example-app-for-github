pipeline {
    agent {
        docker {
            image 'node:8-alpine' 
            args '-u 0:0' 
        }
    }
    stages {
        stage('Build') { 
            steps {
                sh 'npm install' 
            }
        }
    }
}
