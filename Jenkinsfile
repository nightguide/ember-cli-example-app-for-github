pipeline {
  agent {
        docker { 
          image 'node:8-alpine' 
          args '-u 0:0 -p 4200:4200'
        }
  }
    
    stages {
        stage('Build Docker Image') { 
            steps {  
              sh 'npm install -g bower'
              sh 'npm install phantomjs'
              sh 'npm install -g ember-cli'
              sh 'npm install'
              sh 'bower install --allow-root'
              ./node_modules/ember-cli/bin/ember serve
            }
        }
    }
}


