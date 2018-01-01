pipeline {
  agent {
    node {
      label 'ddc3'
    }
    
  }
  stages {
    stage('Start PVS') {
      parallel {
        stage('Start PVS') {
          steps {
            script {
              vSphere buildStep: [$class: 'PowerOn', timeoutInSeconds: 180, vm: 'pvs'], serverName: 'nuc'
            }
            
          }
        }
        stage('') {
          steps {
            bat 'dcd'
          }
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