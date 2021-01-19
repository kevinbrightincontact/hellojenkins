node {
    def image
    stage('Build') {
        checkout scm

        image = docker.build("hello-jenkins:1.0")
    }
    stage('Test') {
        withEnv(['XDG_CACHE_HOME=/tmp/.cache']){
            image.inside {
                sh 'cd /go/src/hellojenkins && go test ./...'
            }
        }
    }
}