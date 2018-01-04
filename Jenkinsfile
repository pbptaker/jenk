pipeline {
  agent {
    node {
      label 'ddc3'
    }
    
  }
  stages {
    stage('Ask for start') {
      steps {
        input 'Start the run?'
      }
    }
    stage('Start PVS') {
      steps {
        script {
          vSphere buildStep: [$class: 'PowerOn', timeoutInSeconds: 180, vm: 'pvs'], serverName: 'nuc'
        }
        
      }
    }
    stage('Create new vDisk-Version') {
      steps {
        node(label: 'PVS') {
          powershell 'ddd'
        }
        
      }
    }
    stage('Start MasterTarget') {
      steps {
        script {
          vSphere buildStep: [$class: 'PowerOn', timeoutInSeconds: 180, vm: 'MasterTarget'], serverName: 'nuc'
        }
        
      }
    }
  }
}