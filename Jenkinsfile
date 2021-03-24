pipeline {
    agent any
    stages {
        stage('Gradle build') {
            steps {
                echo 'Build application with gradle'
                sh './gradlew build'
                /*archiveArtifacts artifacts: 'dist/trainSchedule.zip'*/
            }
        }
        stage('Smoke test') {
            steps {
                echo 'Smoke test'
                sh './gradlew run | grep "Hello World!"'
                /*archiveArtifacts artifacts: 'dist/trainSchedule.zip'*/
            }
        }
         stage('Upload artifact to GCP storage') {
            steps {
                googleStorageUpload bucket: 'gs://simple-pipeline-artifact2', credentialsId: 'simple-pipeline-app', pattern: 'app/build/distributions/*' 
                /*archiveArtifacts artifacts: 'dist/trainSchedule.zip'*/
            }
        }
    }
}

