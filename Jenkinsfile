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
        sh 'docker-compose up -d'
      }
    }
  }
  post {
    always {
      cleanWs()
    }
  }
}
