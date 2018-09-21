pipeline {
   agent { label 'jenkins-slave' }
   stages {
       stage('Install Dependencies ') { 
         agent {
            docker { 
               image 'node:8-alpine' 
               args '-u 0:0 -p 4200:4200'
            } 
          }
         
          steps {
            sh 'pwd'
          }
       }
       
       stage('Build Docker Image') { 
        steps {  
              sh 'hostname'
            }
        }
   }
}


