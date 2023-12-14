pipeline{
    agent any
        environment{
            COMMIT_MSG = sh(script: 'git log -1 --pretty=format:"%s"', returnStdout: true).trim()
            COMMIT_USER = sh(script: 'git log -1 --pretty=format:"%an"', returnStdout: true).trim()
            BuildTag = sh(script: 'git describe --tags --abbrev=0', returnStdout: true).trim()
            LastTag = sh (script: 'cat /var/jenkins_home/envinjector.properties | grep "lastTag" | cut -d "=" -f 2', returnStdout: true).trim()
        }
        stages{
            stage('env injection') {
                steps {
                    script {
                        echo "${LastTag}"
                    }
                }
            }
            stage('Build Microservice'){
                when {
                    expression { 
                        env.LastTag != env.BuildTag
                    }
                }
                steps{
                    script{                
                        def msList=[]
                        currentBuild.changeSets.each { changeSet ->
                            changeSet.items.each { entry ->        
                                entry.affectedFiles.each { file ->
                                    if (file.path.contains('src/app/')) {
                                    msList << file.path.split('/')[2]  
                                        }  
                                    }
                                }
                            }
                        print msList    
                        def msSet = msList as Set
                        print msSet

                        if (BuildTag.contains(nestEnv)){
                            msSet.each { item ->
                            println(item)
                            build job: 'mockPipeline', parameters: [[$class: 'StringParameterValue', name: 'microservice', value: "${item}"],
                            [$class: 'StringParameterValue', name: 'COMMIT_MSG', value: "${COMMIT_MSG}"],
                            [$class: 'StringParameterValue', name: 'COMMIT_USER', value: "${COMMIT_USER}"],
                            [$class: 'StringParameterValue', name: 'BuildTag', value: "${BuildTag}"]]
                            }
                        }
                        else {
                            echo "Tag and environment doesn't match"
                        }    
                    }
                }
            }
        }
        post {
        always {
            script {
                writeFile file: '/var/jenkins_home/envinjector.properties', text: "lastTag=${env.BuildTag}"
                }
            }
        }
    }