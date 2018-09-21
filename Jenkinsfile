pipeline {
   stages {
       stage('Install Dependencies ') { 
         agent {
            docker { 
               image 'node:8-alpine' 
               args '-u 0:0 -p 4200:4200'
               label 'jenkins-slave'
            } 
          }
          steps {
          sh 'pwd'
       }
       }
       
      
      }
       stage('Build Docker Image') { 
           steps {  
              sh 'hostname'
              sh 'docker build -t kub-ansible:5000/admin/ember-cli-example:$BUILD_NUMBER ${WORKSPACE}'
            }
        }
   }
}


