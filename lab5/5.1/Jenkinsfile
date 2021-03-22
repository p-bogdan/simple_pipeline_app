pipeline {
    agent any
    stages {
        stage('Initialize terraform') {
            steps {
                echo 'Initialize terraform'
                sh 'terraform init'
                /*archiveArtifacts artifacts: 'dist/trainSchedule.zip'*/
            }
        }
        stage('Create GCP instance') {
            steps {
              echo 'Creating compute instance in GCP'
              sh 'terraform apply --auto-approve'
            }
        }
        stage('Destroy GCP instance') {
            steps {
              timeout(time: 5, unit: 'MINUTES') {
              input(id: "Destroying terraform instance", message: "Are you sure to destroy ${params.project_name}?", ok: 'Destroy')
              echo 'Destroying GCP instance'
              sh 'terraform destroy -force'
              
              }
            }
        }
    }
}
 