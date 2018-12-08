pipeline {
  agent any
  options {
    disableConcurrentBuilds()
    timeout(time: 10, unit: 'MINUTES')
  }
  stages {
    stage('Verify Tools') {
      steps {
        sh 'docker --version'
        sh 'which docker'
      }
    }
    stage('Deploy') {
      steps {
        sh 'docker build -t reverseproxy .'
        sh 'docker rm -f reverseproxy || true'
        sh 'docker-compose up -d'
        sh 'docker image prune -f'
      }
    }
  }
  post {
    always {
      cleanWs()
    }
  }
}
