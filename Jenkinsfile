pipeline{
    agent any
        environment{
            COMMIT_MSG = sh(script: 'git log -1 --pretty=format:"%s"', returnStdout: true).trim()
            COMMIT_USER = sh(script: 'git log -1 --pretty=format:"%an"', returnStdout: true).trim()
            BuildTag = sh(script: 'git describe --tags --abbrev=0', returnStdout: true).trim()
        }
        stages{
            stage('git'){
                steps{
                    script{
                        echo "1=${COMMIT_MSG}" 
                        echo "2=${COMMIT_USER}"
                        echo "3=${BuildTag}"
                        echo "4=${nestEnv}"
                    }
                } 
            }
            stage('get tag'){
                steps{
                    script{
                        def buildInfo = currentBuild.previousBuild
                        print buildInfo
                        print buildInfo.buildVariables
                        def buildEnvVars = buildInfo.getBuildVariables()
                        if (buildEnvVars) {
                            buildEnvVars.each { key, value ->
                                println "Environment Variable: ${key} = ${value}"
                            }
                        } else {
                            println "No environment variables found in the last completed build."
                        }
                    }
                }
            }
            stage('Build Microservice'){
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
                            [$class: 'StringParameterValue', name: 'COMMIT_USER', value: "${COMMIT_USER}"]]
                            }
                        }
                        else {
                            echo "Tag and environment doesn't match"
                        }    
                    }
                }
            }
        }
    }