pipeline {
    agent {
        docker {
            image 'openjdk:8-alpine'
            args '-p 8081:8080'
        }
    }

    stages {
        stage('Build') {
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }
    }
}