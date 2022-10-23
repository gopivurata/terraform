def call(){
    pipeline {
    agent  { label 'NODE' }
    
    stages {
        stage('git checkout') {
            steps {
               git branch: 'main', url: 'https://github.com/gopivurata/terraform.git'
            }

        }
        stage('init') {
            steps {
                sh 'terraform init'
            }

        }
        stage('apply') {
            steps {
               // sh 'terraform apply -auto-approve'
                sh 'terraform destroy -auto-approve'
            }

        }
        
     }
     

}

}