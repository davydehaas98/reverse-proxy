pipeline {
    agent any
    options {
        disableConcurrentBuilds()
        timeout(time: 10, unit: 'MINUTES')
    }
    stages {
        stage('Verify') {
            steps {
                sh 'docker-compose --version'
                sh 'which docker-compose'
            }
        }
        stage('Deploy') {
            when {
                branch 'master'
            }
            steps {
                sh 'docker-compose up -d --build'
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
