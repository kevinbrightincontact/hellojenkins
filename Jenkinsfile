node {
    def image
    stage('Build') {
        checkout scm

        image = docker.build("hello-jenkins:1.0")
    }
    stage('Test') {
        image.inside {
            sh 'export XDG_CACHE_HOME=/tmp/.cache'
            sh 'cd /go/src/hellojenkins && go test ./...'
        }
    }
}