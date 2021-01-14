pipeline {
    agent { dockerfile true }
    stages {
        stage('build') {
            steps {
                sh 'go version'

                node {
                    docker.build("hellojenkins:1")
                }
            }
        }
    }
}