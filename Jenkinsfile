pipeline {
    agent  { label 'TERRAFORM' }
    stages {
        stage('git') {
            steps {
                git branch: 'master', 
                url: 'https://github.com/gopivurata/terraform.git'
            }

        }
        stage('build') {
            steps {
                sh 'terraform plan /s3buckrt.tf'
            }
        }
    }

}