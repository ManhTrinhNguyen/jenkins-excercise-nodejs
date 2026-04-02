pipeline {
    agent any
    stages {
        stage('Increment Version') {
            steps {
                dir 'app' {
                    echo 'Incrementing version ...' 
                    sh 'npm version patch'
                }  
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
                sh 'npm test'
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