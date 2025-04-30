pipeline{
  agent any
  environment{
    IMG_NAME = 'myimage_nginx'
  }
  stages {
    stage("Supprimer le workspace"){
      steps {
        deleteDir()
      }
    }
    stage("Checkout SCM"){
      steps {
        sh 'git clone https://github.com/Lylyss97x/Jenkins_Docker_Project.git'
      }
    }
    stage("Build Image Docker"){
      steps {
        script {
                    sh 'cd Jenkins_Docker_Project/'
                    sh ' pwd && l'
                    sh 'docker build -t ${IMG_NAME} .'
                    sh 'docker tag myimage_nginx alyssa:myimage_nginx'
                }
      }
    }

    stage("Deploy Container"){
      steps {
        script {
                    sh 'docker rm -f $(docker ps -aq) || true'
                    sh 'docker run -d --name myapp --hostname myapp -p 8099:80 myimage_nginx'
                }
      }
    }
  }
}
