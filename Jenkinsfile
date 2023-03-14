pipeline{
   agent any
//   parameters {
//            choice(name: 'Infra_env', choices: ['dev', 'prod'], description: 'Pick the env')
//             choice(name: 'Action', choices: ['apply', 'destroy'], description: 'Pick the action')
//         }
   environment {
        CLOUDSDK_CORE_PROJECT='sbx-107038-rm0228-bd-3ba40310'
    }
   stages{
      withCredentials([file(credentialsId: 'gcloud-credentials' , variable: 'GCLOUD_CREDS')]){
       stage('init'){
           steps{
               script{
                    sh "terraform init"
                  //-backend-config=env-${Infra_env}/state.tfvars
           }
       }
     }
       stage('apply/destroy'){
           steps{
               script{
                  sh "terraform apply --auto-approve"
                  //-var-file=env-${Infra_env}/main.tfvars"
               }
           }
       }
     }
   }
}
