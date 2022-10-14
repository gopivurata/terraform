pipeline {
    agent  { label 'TERRAFORM' }
    tools {
        terraform 'terraform'
    }

    stages {
        stage('git') {
            steps {
                git branch: 'main', 
                       url: 'https://github.com/gopivurata/terraform.git'
            }

        }
        stage('init') {
            steps {
                sh 'terraform init'
            }

        }
        stage('apply') {
            steps {
                sh 'terraform apply --auto-approve'
            }

        }
        
     }
     

}