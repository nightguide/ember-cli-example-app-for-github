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
            sh 'pwd' 
            }
        }
       stage('Build Docker Image') { 
            steps {  
              sh 'pwd'
              sh 'docker build -t kub-ansible:5000/admin/ember-cli-example:$BUILD_NUMBER ${WORKSPACE}/.'
            }
        }
    }
}


