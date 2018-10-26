pipeline {
    agent {
        dockerfile true
    }

    stages {
        stage('Build-Package') {
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }

        stage('Build-Image') {
            steps {
                sh 'docker build . -t 192.168.200.209:5000/wondersoft/demo:${env.BUILD_ID}'
            }
        }

        stage('Push-Image') {
            steps {
                sh 'docker push 192.168.200.209:5000/wondersoft/demo:${env.BUILD_ID}'
            }
        }

        stage('Clean-Image') {
            steps {
                sh 'docker rmi 192.168.200.209:5000/wondersoft/demo:${env.BUILD_ID}'
            }
        }
    }
}