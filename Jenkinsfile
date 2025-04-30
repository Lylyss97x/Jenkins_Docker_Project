pipeline{
  agent any
  stages {
    stage("Supprimer le workspace"){
      steps {
        deleteDir()
      }
    }
    stage("Checkout SCM"){
      steps {
        sh 'git clone https://github.com/Lylyss97x/Jenkins_Docker_Projet.git'
      }
    }
  }
}
