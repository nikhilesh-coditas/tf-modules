pipeline{
    agent any
        stages{
            stage('git'){
                steps{
                    script{
                        COMMIT_MSG = sh(script: 'git log -1 --pretty=format:"%s"', returnStdout: true).trim()
                        echo "1=${COMMIT_MSG}" 
                        COMMIT_USER = sh(script: 'git log -1 --pretty=format:"%an"', returnStdout: true).trim()
                        echo "2=${COMMIT_USER}"
                        BuildTag = sh(script: 'git describe --tags --abbrev=0', returnStdout: true).trim()
                        echo "3=${BuildTag}"
                        echo "4=${nestEnv}"
                    }
                } 
            }
            stage('get tag'){
                steps{
                    script{
                        def buildInfo = currentBuild.previousBuild.getBuildVariables()
                        print buildInfo
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