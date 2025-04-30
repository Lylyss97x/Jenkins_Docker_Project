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
        sh 'git clone https://github.com/Lylyss97x/Jenkins_Docker_Project.git'
      }
    }
    stage("Build Image Docker"){
      steps {
        script {
                    sh 'docker build -t myimage_nginx .'
                    sh 'docker tag myimage_nginx alyssa:myimage_nginx'
                }
      }
    }

    stage("Deploy Container"){
      steps {
        script {
                    sh 'docker rm image mynginx .'
                    sh 'docker rm -f $(docker ps -aq)'
                    sh 'docker run -d --name myapp --hostname myapp -p 8099:80 myimage_nginx'
                }
      }
    }
  }
}
