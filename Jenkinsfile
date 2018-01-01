pipeline {
  agent {
    node {
      label 'target'
    }
    
  }
  stages {
    stage('Start PVS') {
      steps {
        script {
          vSphere buildStep: [$class: 'PowerOn', timeoutInSeconds: 180, vm: 'pvs'], serverName: 'nuc'
        }
        
      }
    }
    stage('Start Target') {
      steps {
        script {
          vSphere buildStep: [$class: 'PowerOn', timeoutInSeconds: 180, vm: 'target'], serverName: 'nuc'
        }
        
      }
    }
    stage('Posershell') {
      steps {
        script {
          powershell 'New-Item c:\\scripts\\test -type directory'
        }
        
      }
    }
  }
}