//@Library('Omnenest') _
//testAutoTrigger()
pipeline{
    agent any
    environment{
        giturl="https://github.com/nikhilesh-coditas/tf-modules.git"
        GITTAG=sh (script: "git describe --tags --abbrev=0", returnStdout: true).trim()
    }
    parameters {
        choice(
            name: 'microservice',
            choices: ['authentication', 'watchlist', 'alerts', 'orders', 'portfolio', 'profile', 'websocket'],
            description: 'Select the microservice to build'
        )
    }
    stages{
        stage("Set env"){
            steps{
                echo "MICROSERVICE"
                echo "${env.giturl}"
                echo "${env.GITTAG}"
                echo "main branch"
            }
        }
    }    
}
