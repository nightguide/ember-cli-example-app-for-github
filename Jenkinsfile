pipeline {
 
  agent {
        docker { 
          image 'node:8-alpine' 
          args '-u 0:0 -p 4200:4200'
          label 'jenkins-slave'
        }
  }
    
    stages {
        stage('Install Dependencies ') { 
            steps {  
              sh 'npm install bower'
              sh 'npm install phantomjs'
              sh 'npm install ember-cli'
              sh 'npm install'
              sh './node_modules/bower/bin/bower install --allow-root'
            }
        }
       stage('Build Docker Image') { 
            steps {  
             sh 'docker build -t kub-ansible:5000/admin/ember-cli-example:$BUILD_NUMBER .'
            }
        }
    }
}


