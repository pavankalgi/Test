node('master') {
def app_name = 'hello-world'
def registry_url = 'http://3.6.126.19:5000'


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

 post {
    always {
        emailext body: 'A Test EMail', recipientProviders: [[$class: 'ajey.k106@gmail.com'], [$class: 'ajey.k106@gmail.com']], subject: 'Test'
    }
} 
}
