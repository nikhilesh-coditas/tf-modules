pipeline{
    agent any
        environment{
            COMMIT_MSG = sh(script: 'git log -1 --pretty=format:"%s"', returnStdout: true).trim()
            COMMIT_USER = sh(script: 'git log -1 --pretty=format:"%an"', returnStdout: true).trim()
            //BuildTag = sh(script: 'git describe --tags --abbrev=0', returnStdout: true).trim()
            //LastTag = sh (script: 'cat /var/jenkins_home/envinjector.properties | grep "lastTag" | cut -d "=" -f 2', returnStdout: true).trim()
        }
        stages{
            stage('env injection') {
                steps {
                    script {
                        echo "LastTag"
                    }
                }
            }
            stage('Build Microservice'){
                steps{
                    script{                
                        def msList=[]
                        def fileLists=sh(script: 'find src/app/ -mindepth 1 -maxdepth 1 -type d', returnStdout: true).trim()
                        fileLists.readLines().each { file ->
                            msList << file.split('/')[2]
                        }                        
                        msList.each { item ->
                        println(item)
                        /*build job: 'mockPipeline', parameters: [[$class: 'StringParameterValue', name: 'microservice', value: "${item}"],
                        [$class: 'StringParameterValue', name: 'COMMIT_MSG', value: "${COMMIT_MSG}"],
                        [$class: 'StringParameterValue', name: 'COMMIT_USER', value: "${COMMIT_USER}"],
                        [$class: 'StringParameterValue', name: 'BuildTag', value: "${BuildTag}"]]*/
                        }  
                    }
                }
            }
        }
    }