pipeline{
   agent any
  parameters {
            choice(name: 'Infra_env', choices: ['dev', 'prod'], description: 'Pick the env')
            choice(name: 'Action', choices: ['apply', 'destroy'], description: 'Pick the action')
        }
   stages{
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
                  sh "terraform ${ACTION} --auto-approve"
                  //-var-file=env-${Infra_env}/main.tfvars"
               }
           }
       }
   }
}
