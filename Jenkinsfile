pipeline {
    agent any    

    environment {
        XDG_CACHE_HOME = '/tmp/.cache'
    }

    stages {
        stage('Build') {   
            // Use golang.
            agent { docker { image 'golang' } }

            steps {                                           
                sh 'go build main.go'               
            }            
        }
        
        stage('Test') {
            agent { docker { image 'golang' } }
            
            steps {
                sh 'go test ./...'
            }
        }
    }
}