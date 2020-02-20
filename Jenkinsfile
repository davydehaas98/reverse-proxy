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
        stage('Delivery') {
            steps {
                sh 'docker login -u ${DOCKER_USER} -p ${DOCKER_ACCESS_TOKEN}'
                sh 'docker build -t reverse-proxy .'
                sh 'docker tag reverse-proxy ${DOCKER_USER}/reverse-proxy:${GIT_COMMIT}'
                sh 'docker tag reverse-proxy ${DOCKER_USER}/reverse-proxy:latest'
                sh 'docker push ${DOCKER_USER}/reverse-proxy:${GIT_COMMIT}'
                sh 'docker push ${DOCKER_USER}/reverse-proxy:latest'
            }
        }
        stage('Deploy') {
            when {
                branch 'master'
            }
            steps {
                sh 'docker-compose up -d --build --force-recreate'
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
