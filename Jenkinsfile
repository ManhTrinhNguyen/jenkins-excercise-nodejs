pipeline {
    agent any
   
    stages {
        stage('Increment Version') {
            steps {
                echo 'Incrementing version ...' 
                sh 'node -v'
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