pipeline {
  agent any
  options {
    disableConcurrentBuilds()
    timeout(time: 10, unit: 'MINUTES')
  }
  triggers {
      gitlab(
      triggerOnPush: true,
      triggerOnMergeRequest: true
    )
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
        sh 'sudo openssl req -subj '/CN=localhost' -x509 -newkey rsa:4096 -nodes -keyout key.pem -out cert.pem -days 365'
        sh 'docker build -t reverse-proxy .'
        sh 'docker rm -f reverse-proxy || true'
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
