pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/nrk16p/business_intelligence.git'
            }
        }

        stage('Setup Virtualenv') {
            steps {
                sh '''
                python3 -m venv venv
                . venv/bin/activate
                pip install --upgrade pip
                pip install -r requirements.txt
                '''
            }
        }

        stage('Run App') {
            steps {
                sh '''
                . venv/bin/activate
                nohup python app.py > flask.log 2>&1 &
                '''
            }
        }
    }
}
