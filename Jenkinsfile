node {
    def image
    stage('Build') {
        checkout scm

        image = docker.build("hello-jenkins:1.0")

        image.inside {
            sh 'cd /go/src/hellojenkins && go get -t ./...'
            sh 'go build main.go'
        }
    }
    stage('Test') {
        withEnv(['XDG_CACHE_HOME=/tmp/.cache']){
            image.inside {
                sh 'echo $USER'
            }
        }
    }
}