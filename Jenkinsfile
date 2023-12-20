def content
pipeline{
    agent any
        environment{
            COMMIT_MSG = sh(script: 'git log -1 --pretty=format:"%s"', returnStdout: true).trim()
            COMMIT_USER = sh(script: 'git log -1 --pretty=format:"%an"', returnStdout: true).trim()
            //BuildTag = sh(script: 'git describe --tags --abbrev=0', returnStdout: true).trim()
            //LastTag = sh (script: 'cat /var/jenkins_home/envinjector.properties | grep "lastTag" | cut -d "=" -f 2', returnStdout: true).trim()
            //job=determineRepoName()
        }
        stages{
            stage('env injection') {
                steps {
                    script {
                        echo "LastTag"
                        echo "job=${JOB_NAME}"
                        echo "${scm.getUserRemoteConfigs()}"//[0].getUrl().tokenize('/').last().split("\\.")}"
                        sh "ls"
                        echo "start"
                        sh'''
                        content=$(cat release-notes.txt)
                        '''
                        echo "done"
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
                        println(msList)         
                        def lastms=msList[-1]
                        println("######")
                        println(lastms)  
                        println("######") 
                        msList=msList[0..-2]
                        msList.each { item ->
                        println(item)
                        sh '''
                        echo ${item}'''
                        //triggerJenkins(ms:item, cmt_msg:COMMIT_MSG, cmt_usr:COMMIT_USER) //, build_tag:BuildTag)
                        //curl -X POST http://172.16.103.15:7080/job/mockPipeline/build --user jobtrigger:112ab486fb553d069447e606f2fe99dcb0 --data COMMIT_USER=${COMMIT_USER} --data microservice=${item} --data COMMIT_MSG=${COMMIT_MSG} --data BuildTag=dev-release-3
                        //sleep 10
                        }
                        //build job: 'mockPipeline', parameters: [[$class: 'StringParameterValue', name: 'microservice', value: "${lastms}"],
                        //[$class: 'StringParameterValue', name: 'COMMIT_MSG', value: "${COMMIT_MSG}"],
                        //[$class: 'StringParameterValue', name: 'COMMIT_USER', value: "${COMMIT_USER}"],
                        //[$class: 'StringParameterValue', name: 'BuildTag', value: "dev-release-3"]]  
                    }
                }
            }
        }
        post{
            always{
                slackSend (color: env.SLACK_COLOR_SUCCESS,channel: "test-notifications", message: "\n *${currentBuild.currentResult}:* \n All microservices are successfully deployed on omnenest ${env.nestEnv} environment. \n Release notes for the build \n ```${env.content}``` ")
            }
        }
    }