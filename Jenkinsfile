pipeline {
  agent {
    node {
      label 'pvs'
    }
    
  }
  stages {
    stage('') {
      steps {
        script {
          vSphere buildStep: [$class: 'PowerOn', timeoutInSeconds: 180, vm: 'target'], serverName: 'nuc'
        }
        
      }
    }
    stage('start pvs') {
      steps {
        script {
          vSphere buildStep: [$class: 'PowerOn', timeoutInSeconds: 180, vm: 'pvs'], serverName: 'nuc'
        }
        
      }
    }
  }
}