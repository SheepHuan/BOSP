//Jenkinsfile (Declarative Pipeline)
pipeline {
    agent { docker 
                { 
                    image 'ubuntu:20.04'
                } 
            }
    stages {
        stage('build') {
            steps {
                sh 'echo "hello world"'
            }
        }
    }
}