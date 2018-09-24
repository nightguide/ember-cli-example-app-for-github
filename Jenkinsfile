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
        //Send to Slack notify
        slackSend (color: '#FFFF00', message: "STARTED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})")
        //Build
         sh 'npm install bower'
         sh 'npm install phantomjs'
         sh 'npm ci'
         sh './node_modules/bower/bin/bower install --allow-root'
      }   
       }
       
       stage('Build Docker Image') { 
         steps {  
            sh 'docker build -t kub-ansible:5000/admin/ember-cli-example:$BUILD_NUMBER . '
            }
        }
        
        stage('Docker Push') {
      steps {
          sh "docker login -u admin -p N0v0sibirsk! kub-ansible:5000"
          sh 'docker push kub-ansible:5000/admin/ember-cli-example:$BUILD_NUMBER'
        }
       }
 stage('Deploy to Kubernetes') {
      steps {
           sh 'kubectl set image deployment/ember-cli-example ember-cli-example=kub-ansible:5000/admin/ember-cli-example:$BUILD_NUMBER -n=dev'
         }
        }
      }
post {
    success {
      slackSend (color: '#00FF00', message: "SUCCESSFUL: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})")
    }

    failure {
      slackSend (color: '#FF0000', message: "FAILED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})")
    }     
 }
   }



