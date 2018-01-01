pipeline {
  agent {
    node {
      label 'master'
    }
    
  }
  stages {
    stage('Start Target') {
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
    stage('Execute Powershell') {
      steps {
        script {
          powershell 'New-Item c:\\scripts\\test -type directory'
        }
        
      }
    }
  }
}
