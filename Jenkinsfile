pipeline {
    agent any

    environment {
        DOCKERHUB_CREDS = credentials('dockerhub')
    }

    stages {

        stage('Clone') {
            steps {
                git 'https://github.com/Mwagh5022/devops-Jenkins.git'
            }
        }

        stage('Build') {
            steps {
                sh 'docker build -t mwagh5022/myapp:latest .'
            }
        }

        stage('Login & Push') {
            steps {
                sh '''
                    echo $DOCKERHUB_CREDS_PSW | docker login \
                    -u $DOCKERHUB_CREDS_USR --password-stdin

                    docker push <dockerhub-username>/myapp:latest
                '''
            }
        }
    }
}

