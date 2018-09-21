pipeline {
    agent {
        docker {
            image 'node:8-alpine' 
            args '-u 0:0' 
            args '-p 4200:4200'
        }
    }
    stages {
        stage('Build') { 
            steps {  
              sh 'npm install' 
              sh 'npm install -g bower'
              sh 'npm install -g ember-cli'
              sh 'npm install phantomjs'
              sh 'ember serve'
            }
        }
    }
}
