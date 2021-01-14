pipeline {
    agent { dockerfile true }
    stages {
        stage('build') {
            steps {
                sh 'go version'

                docker.build("hellojenkins:1")
            }
        }
    }
}