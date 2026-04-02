pipeline {
    agent any
   
    stages {
        stage('Increment Version') {
            steps {
                echo 'Incrementing version ...' 
                sh 'npm install'
                sh 'npm version patch --no-git-tag-version'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying.....'
                // Add deployment steps here
            }
        }
    }   
}