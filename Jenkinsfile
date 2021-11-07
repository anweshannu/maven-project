pipeline {
    agent any

    stages {
        stage('Clone From Git') {
            steps {
                // Get some code from a GitHub repository
                git 'https://github.com/anweshannu/maven-project'

            }

        }

    stage('Build using Maven')  {
            steps {
                sh "mvn clean package"
            }
        }
        
 	stage('Deploy to container')  {
            steps {
                sh '''chmod +x post_shell_script.sh
                ./post_shell_script.sh'''
            }
        }
    }
}

