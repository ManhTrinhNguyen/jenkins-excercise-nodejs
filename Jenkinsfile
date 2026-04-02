pipeline {
    agent any

    env {
        ECR_REGISTRY = '660753258283.dkr.ecr.us-west-1.amazonaws.com'
    }
   
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
                script {
                    dir('app') {
                        echo 'Running tests ...'
                        sh 'npm run test'
                    }
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dir('app') {
                        withCredentials([usernamePassword(credentialsId: 'ecr_credentials', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                            echo 'Logging in to ECR ...'
                            sh "echo ${PASSWORD} | docker login --username ${USERNAME} --password-stdin ${ECR_REGISTRY}"

                            echo 'Building Docker image ...'
                        }
                    } 
                }
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