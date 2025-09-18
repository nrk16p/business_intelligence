pipeline {
    agent {
        docker { image 'python:3.12-slim' }
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/nrk16p/business_intelligence.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'pip install --no-cache-dir -r requirements.txt'
            }
        }

        stage('Run App') {
            steps {
                sh 'python app.py &'
            }
        }
    }
}
