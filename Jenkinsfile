pipeline {
    agent any

    environment {
        DEPLOY_ENV = "staging"
    }

    stages {

        stage('Build') {
            steps {
                // e.g. sh 'make build' or mvn clean package
                echo "Running build..."

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
