pipeline {
    agent any

    environment {
        DOCKERHUB = credentials('dockerhub')
        IMAGE = "Mwagh5022/myapp:latest"
    }

    stages {
        stage('Clone') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/Mwagh5022Git/devops-Jenkins.git'
            }
        }

        stage('Build Image') {
            steps {
                sh 'docker build -t mwagh5022/myapp:latest .'
            }
        }

        stage('Login & Push') {
            steps {
                sh '''
                  echo "$DOCKERHUB_PSW" | docker login \
                  -u "$DOCKERHUB_USR" --password-stdin
                  docker push mwagh5022/myapp:latest
                '''
            }
        }
    }
}
