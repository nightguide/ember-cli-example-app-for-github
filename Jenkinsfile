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
              sh 'npm install bower'
              sh 'npm install phantomjs'
              sh 'npm install ember-cli'
              sh 'npm install'
              sh './node_modules/bower/bower install --allow-root'
              sh './node_modules/ember-cli/bin/ember serve'
            }
        }
    }
}


