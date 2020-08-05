node('master') {
def app_name = 'hello-world'


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

}
