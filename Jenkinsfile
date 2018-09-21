pipeline {
  agent {
        docker { image 'node:8-alpine' }
  }
    
    stages {
        stage('Build Docker Image') { 
            steps {  
              sh 'chown -R $USER:$GROUP ~/.npm'
              sh 'chown -R $USER:$GROUP ~/.config'
              sh 'npm install -g bower'
              sh 'npm install -g phantomjs'
              sh 'npm install ember-cli'
              sh 'npm install'
              sh 'bower install'
              sh 'ember serve'
            }
        }
    }
}


