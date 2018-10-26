pipeline {
    agent {
        dockerfile true
    }

    stages {
        stage('Build-Package') {
            steps {
                mvn -B -DskipTests clean package
            }
        }

        stage('Build-Image') {
            steps {
                docker build . -t 192.168.200.209:5000/wondersoft/demo:${env.BUILD_ID}
            }
        }

        stage('Push-Image') {
            steps {
                docker push 192.168.200.209:5000/wondersoft/demo:${env.BUILD_ID}
            }
        }

        stage('Clean-Image') {
            steps {
                docker rmi 192.168.200.209:5000/wondersoft/demo:${env.BUILD_ID}
            }
        }
    }
}