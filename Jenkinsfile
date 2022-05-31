pipeline {
    agent none

    stages {
        stage('. Net Build and Test') {
            agent{ 
                docker{ image 'mcr.microsoft.com/dotnet/sdk:6.0'}
            }
            environment{ 
                DOTNET_CLI_HOME ='/tmp/dotnet_cli_home'
            }
            steps {
                sh 'dotnet build'
                sh 'dotnet test'
            }
        }
        stage('TypeScript Build and Test') {
            agent{ docker{ image 'node:17-bullseye'}}
            steps {
               dir('DotnetTemplate.Web')
               {
               sh 'npm install'
               sh 'run build'
               sh 'run lint'
               sh 'npm t'
               }

            }
        }
    }
}