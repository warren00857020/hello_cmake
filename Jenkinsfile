pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            agent {
                docker { 
                    image 'gcc:12' 
                    args '-u root'
                }
            }
            steps {
                sh 'apt-get update && apt-get install -y cmake'
                sh 'cmake -B build'
                sh 'cmake --build build'
            }
        }
        stage('Run') {
            steps {
                sh './build/hello'
            }
        }
    }
}