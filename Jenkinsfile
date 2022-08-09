pipeline {
    agent any
    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'main', credentialsId: 'github', url: 'https://github.com/edmundtetteh/EC2-repo.git'
            }
        }
        stage('Building image') {
            steps {
            sh 'docker build -t  edmundtetteh/my-app:1.0 .'
           }
        }

        stage('Publish') {
            steps {
                withDockerRegistry([credentialsId: "docker-hub-edmund", url: ""]) {
                sh 'docker push edmundtetteh/my-app:1.0'
            }
          }
        }
    }
}
        
