pipeline {
    agent { label 'jenkins-slave' }
      stages {
        stage('Install Dependencies ') { 
           agent {
            docker { 
               image 'node:8-alpine' 
               args '-u 0:0'
               reuseNode true
            } 
          }
         
          steps {
              sh 'npm install bower'
              sh 'npm install phantomjs'
              sh 'npm install ember-cli'
              sh 'npm install'
              sh './node_modules/bower/bin/bower install --allow-root'
          }
       }
       
       stage('Build Docker Image') { 
       agent none
         steps {  
            sh 'docker build -t kub-ansible:5000/admin/ember-cli-example:$BUILD_NUMBER . '
            }
        }
   }
}


