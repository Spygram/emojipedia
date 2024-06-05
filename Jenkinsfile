pipeline{
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub-credentials-id')
        APP_IMAGE = 'spygram/emojipedia'
        IMAGE_TAG = 'latest'
    }

    stages{

        stage("build"){
            steps{
                sh "docker compose up -d --build"
            }
        }

        stage("Push App image"){
            steps{
                script{
                    docker.withRegistry('', 'dockerhub-credentials-id') {
                        sh 'docker push $APP_IMAGE:$IMAGE_TAG'
                    }
                }
            }
        }
        }
}
