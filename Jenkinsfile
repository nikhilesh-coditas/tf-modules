@Library('Omnenest') _
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
                        msList.eachWithIndex { item, index ->
                        println(item)
                        sh '''
                        echo ${item}'''
                        triggerJenkins(ms:item, cmt_msg:COMMIT_MSG, cmt_usr:COMMIT_USER, build_tag:"dev-release-3")
                        if ((index + 1) % 2 == 0 && index < item.size() - 1) {
                                sh "sleep 30s"
                            }
                        }
                        build job: 'mockPipeline', parameters: [[$class: 'StringParameterValue', name: 'microservice', value: "${lastms}"],
                        [$class: 'StringParameterValue', name: 'COMMIT_MSG', value: "${COMMIT_MSG}"],
                        [$class: 'StringParameterValue', name: 'COMMIT_USER', value: "${COMMIT_USER}"],
                        [$class: 'StringParameterValue', name: 'BuildTag', value: "dev-release-3"]]  
                    }
                }
            }
        }
        /*post{
            always{
                script{
                def works = pwd()
                echo "${works}"
                def file = new File("${works}/release-notes.txt")
                content = file.text 
                println(content)
                slackSend (color: env.SLACK_COLOR_SUCCESS,channel: "test-notifications", message: "\n *${currentBuild.currentResult}:* \n All microservices are successfully deployed on omnenest ${env.nestEnv} environment. \n Release notes for the build \n ```${content}``` ")
            }
        }
    }*/
}    



/*sh " chmod +x /opt/kubeconfig/test.sh"
def changes=sh(script: '/opt/kubeconfig/test.sh', returnStdout: true).trim()
echo "${changes}"
def msList=[]
def list = changes.split(" ")
echo "${list}"
println list.size()
def lastms=list[-1]
//only one ms 
if (list.size() == 1){
    echo "Only one to build= ${lastms}"
}
else if (list.size() > 1){
        echo "lastms: ${lastms}"
        list=list[0..-2]
        list.each { element ->
        println element
    }
}
else if (list.size() == 0){
    def fileLists=sh(script: 'find src/app/ -mindepth 1 -maxdepth 1 -type d', returnStdout: true).trim()
    fileLists.readLines().each { file ->
        msList << file.split('/')[2]
    }          
    println(msList)
}*/