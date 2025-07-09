pipeline {
    agent any

    environment {
        DEPLOY_ENV = "staging"
    }

    stages {

        stage('Build') {
            steps {
                echo "Building the project..."
                // e.g. sh 'make build' or mvn clean package
            }
        }

        stage('Test') {
            steps {
                echo "Running tests..."
                // e.g. sh 'npm test'
            }
        }

        stage('Deploy') {
            steps {
                echo "Deploying to ${DEPLOY_ENV} environment"
                // e.g. sh './deploy.sh'
            }
        }
    }

    post {
        success {
            echo "Pipeline succeeded!"
        }
        failure {
            echo "Pipeline failed."
        }
    }
}
