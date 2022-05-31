pipeline {
    agent any

    stages {
        stage('. Net Build') {
            agent{image 'mcr.microsoft.com/dotnet/sdk:6.0'}
            steps {
                dotnet build
                echo 'Building..'
            }
        }
        stage('. Net Test') {
            agent{image 'mcr.microsoft.com/dotnet/sdk:6.0'}
            steps {
                dotnet test
                echo 'Testing..'
            }
        }
    }
}