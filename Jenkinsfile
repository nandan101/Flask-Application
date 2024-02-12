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
                sh 'python3 -m venv venv' 
            }
        } 
        
        stage("Install Packages") {
            steps {
                  sh '. venv/bin/activate && pip install Flask'
            }
        }
        
        stage("Deploy on Local Host") {
            steps {
                sh '. venv/bin/activate && python app.py'
            }
        }
    } 
}
