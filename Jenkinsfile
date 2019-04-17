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
        sh 'docker-compose --version'
        sh 'which docker-compose'
      }
    }
    stage('Deploy') {
      steps {
        sh 'docker-compose up -d --force-recreate'
      }
    }
  }
  //post {
    //always {
      //cleanWs()
    //}
  //}

}
