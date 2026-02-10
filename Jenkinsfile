pipeline {
    agent any

    environment {
        DOCKERHUB = credentials('mwagh5022')
        IMAGE = "mwagh5022/myapp:latest"
    }

    stages {
        stage('Clone') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/Mwagh5022/devops-Jenkins.git'
            }
        }

        stage('Build Image') {
            steps {
                sh 'docker build -t $IMAGE .'
            }
        }

        stage('Login & Push') {
            steps {
                sh '''
                  echo "$DOCKERHUB_PSW" | docker login \
                  -u "$DOCKERHUB_USR" --password-stdin
                  docker push $IMAGE
                '''
            }
        }
    }
}
