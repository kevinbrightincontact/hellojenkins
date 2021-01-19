pipeline {
    agent any    

    stages {
        stage('Build & Test') {   
            // Use golang.
            agent { docker { image 'golang' } }

            steps {                                           
                sh 'go build main.go'               
            }            
        }
    }
}