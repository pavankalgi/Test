node('master') {
def app_name = 'hello-world'
def registry_url = 'http://52.66.243.85:5000'


def tag
def image

 stage('Checkout') {
  checkout scm
  tag = sh(returnStdout: true, script: 'git rev-parse --short HEAD').trim()
  }

 stage('Build') {
  echo "Build"
    image = docker.build("${app_name}:${tag}")
  }

 stage('Promote') {
   docker.withRegistry("${registry_url}") {
    docker.build("${app_name}:${tag}").push("${tag}")
   }
 }

}
