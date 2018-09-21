pipeline {
    agent any
    }
    stages {
        stage('Build Docker Image') { 
            steps {  
              sh 'docker build -t kub-ansible:5000/admin/ember-cli-example:$BUILD_NUMBER ' 
            }
        }
    }
}

