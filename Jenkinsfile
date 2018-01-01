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
          vSphere buildStep: [$class: 'PowerOn', timeoutInSeconds: 180, vm: 'Target'], serverName: 'nuc'
        }
        
      }
    }
    stage('Execute Powershell') {
      steps {
        script {
          powershell 'New-Item c:\\scripts\\test -type directory'
        }
        
      }
    }
  }
}