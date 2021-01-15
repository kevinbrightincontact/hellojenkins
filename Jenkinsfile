node {
    def image
    stage('Build') {
        checkout scm

        image = docker.build("hello-jenkins:1.0")
    }
    stage('Test') {
        sh 'cd ./src && go test ....'
    }
}