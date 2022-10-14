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
                sh 'terraform plan https://github.com/gopivurata/terraform/blob/main/s3bucket.tf'
            }
        }
    }

}