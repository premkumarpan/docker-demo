pipeline {
    agent any
    environment { 
        DEPLOY_TO = 'production'
		TARGET_ENV = 'prod2'
		
    }
    stages {
        stage('Welcome Step') {
    
            steps {
                  script {
                        def now = new Date()
                        println "Time now:"
                        println now.format("yyMMdd.HHmm", TimeZone.getTimeZone('UTC'))
                        def jobName = env.JOB_NAME + "_" + new Date()
                    }
                    echo 'Welcome to LambdaTest before when declrative '  
                   
            }
            when { 
                allOf { 
                    environment name: 'TARGET_ENV', value: 'prod2'; 
                    environment name: 'DEPLOY_TO', value: 'production'
                } 
            }

        }
    }
}
