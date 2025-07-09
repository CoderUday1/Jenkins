pipeline {
    agent { label 'slave' }

   environment {
        DEPLOY_ENV = "staging"
        IMAGE_NAME = "my-cmake-app"
    }

    stages {

        stage('Build') {
            steps {
                // e.g. sh 'make build' or mvn clean package
                echo "Running build..."
                sh "docker build -t ${IMAGE_NAME} ."

            }
        }

        stage('Test') {
            steps {
                echo "Running tests..."
                sh "docker run --rm ${IMAGE_NAME}"
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
