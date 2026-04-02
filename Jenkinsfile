pipeline {
    agent any
   
    stages {
        stage('Increment Version') {
            steps {
                script {
                    dir('app') {
                        echo 'Incrementing version ...' 
                        sh 'npm install'
                        sh 'npm version patch --no-git-tag-version'

                        def packageJson = readJSON file: 'package.json'

                        def version = packageJson.version

                        env.IMAGE_VERSION = version

                        echo "New version: ${version}"

                    }
                }
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