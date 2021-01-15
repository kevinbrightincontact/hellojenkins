node {
    def image
    stage('Build') {
        checkout scm

        image = docker.build("hello-jenkins:1.0")
    }
    stage('Test') {
        withEnv(['XDG_CACHE_HOME=/tmp/.cache']){
            image.inside {
                sh 'export XDG_CACHE_HOME=/tmp/.cache'
                sh 'echo $XDG_CACHE_HOME'
                sh 'cd /go/src/hellojenkins && go test ./...'
            }
        }
    }
}