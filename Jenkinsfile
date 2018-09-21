pipeline {
         agent {
            docker { 
               image 'node:8-alpine' 
               args '-u 0:0 -p 4200:4200'
            } 
          }
         
     stages {
       stage('Install Dependencies ') { 
  
          steps {
            sh 'pwd'
          }
       }
       
       stage('Build Docker Image') { 
       agent none
         steps {  
              sh 'hostname'
            }
        }
   }
}


