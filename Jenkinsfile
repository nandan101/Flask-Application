pipeline {
    agent any

    stages {
        stage("Git Clone") {
            steps {
                git url: 'https://github.com/Manojkumar1709/Flask-Application.git'
            }
        }

        stage('Set Up Virtual Environment') {
            steps {
                bat 'python -m venv venv'
            }
        }

        stage("Install Packages") {
            steps {
                bat 'venv\\Scripts\\activate && pip install Flask'
            }
        }

        stage("Deploy on Local Host") {
            steps {
                bat 'venv\\Scripts\\activate && python app.py'
            }
        }
    }
}
