node {
    def image
    stage('Build') {
        checkout scm

        image = docker.build("hello-jenkins:1.0")

        withEnv(['XDG_CACHE_HOME=/tmp/.cache']){
            image.inside {
                sh 'cd /go/src/hellojenkins && go mod download'
                sh 'go build main.go'
            }
        }
    }
    stage('Test') {
        image.inside {
            sh 'cd /go/src/hellojenkins && go test ./...'
        }
    }
}