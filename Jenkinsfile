pipeline{
    agent any
    stages{
        stage('abc'){
            steps{
                echo "This is dev branch"
                echo "v2.0"
                script{
                IMAGE_TAG = sh(script: "git tag -l | grep 'main' | sort -V | head -n 0", returnStdout: true).trim()
                }
                echo "${IMAGE_TAG}"
            }
        }
    }
}