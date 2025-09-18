pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/nrk16p/business_intelligence.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'pip3 install --no-cache-dir -r requirements.txt'
            }
        }

        stage('Run App') {
            steps {
                sh 'nohup python3 app.py > flask.log 2>&1 &'
            }
        }
    }
}
