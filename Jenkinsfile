pipeline {
    agent { label 'slave' }

   environment {
        DEPLOY_ENV = "staging"
        IMAGE_NAME = "my-cmake-app"
        IMAGE_TAG = "latest"
    }

    stages {

        stage('Build') {
            steps {
                // e.g. sh 'make build' or mvn clean packag
                echo "Running build..."
                sh "docker build -t udaysonu/${IMAGE_NAME} ."

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
            echo "Build successful, pushing to Docker Hub..."

            withCredentials([usernamePassword(
                credentialsId: 'b3ac874a-4be9-4e28-89aa-4cb0f3c01462', 
                usernameVariable: 'DOCKER_USER', 
                passwordVariable: 'DOCKER_PASS'
            )]) {
                sh """
                echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
                docker push udaysonu/${IMAGE_NAME}:${IMAGE_TAG}
                docker logout
                """
            }
        }
        failure {
            echo "Pipeline failed."
        }
    }
}
