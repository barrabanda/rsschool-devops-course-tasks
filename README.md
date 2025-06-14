# Task 1: AWS Account Configuration

1. **AWS CLI and Terraform Installation**

   - AWS CLI 2
     
![image](https://github.com/user-attachments/assets/0dd94c31-90b6-4d23-a166-a6de4ab0913f)
   - Terraform 1.6+
     
![ter_v](https://github.com/user-attachments/assets/273217d9-0ee3-473c-ad59-375771baaf97)
   - Configuring Terraform version manager - Windows (64bit) - currently presumed failing

2. **IAM User and MFA**

   - New user created with the following policies:
     - AmazonEC2FullAccess
     - AmazonRoute53FullAccess
     - AmazonS3FullAccess
     - IAMFullAccess
     - AmazonVPCFullAccess
     - AmazonSQSFullAccess
     - AmazonEventBridgeFullAccess
       
   ![image](https://github.com/user-attachments/assets/4b20f2ca-4e08-42ec-90db-4cd9af8378cc)

   - MFA is configured for both users:
     
   ![image](https://github.com/user-attachments/assets/dcf399d2-bd58-44f3-8b99-f70c9506c647)
   
   ![image](https://github.com/user-attachments/assets/1470581c-d194-4008-805b-88505e04a4fb)


   - Access Key ID and Secret Access Key are generated for the user:
   ![image](https://github.com/user-attachments/assets/faea4cc8-80dd-4aea-9d4b-072a2f4c416f)

4. **AWS CLI**

   - AWS CLI is configured to the new user's credentials
     
![image](https://github.com/user-attachments/assets/2ad6ccfa-e768-4673-8c4b-4e1c4eecd018)

   
   - Verification
   
![image](https://github.com/user-attachments/assets/ca724b43-705b-49e9-90c9-6b93363a3fbc)


4. **Github repository for the Terraform code**

   - Created a repository `rsschool-devops-course-tasks`

5. **Bucket for Terraform states**

   - Provider created
  
   ![image](https://github.com/user-attachments/assets/a01b618a-8549-4776-8ad7-2da89abc4a02)

   - S3 bucket created
  
   ![image](https://github.com/user-attachments/assets/f5d001d7-9356-43d5-a176-4eb1cc399af8)

   ![image](https://github.com/user-attachments/assets/d208821b-f7bf-4b10-b172-70899f8ecc60)



7. **Github Actions workflow for deployment via Terraform**
   - The workflow should have 3 jobs that run on pull request and push to the default branch:
     - `terraform-check` with format checking using [terraform fmt](https://developer.hashicorp.com/terraform/cli/commands/fmt)
     - `terraform-plan` for planning deployments [terraform plan](https://developer.hashicorp.com/terraform/cli/commands/plan)
     - `terraform-apply` for deploying [terraform apply](https://developer.hashicorp.com/terraform/cli/commands/apply)
   - [terraform init](https://developer.hashicorp.com/terraform/cli/commands/init)
   - [Github actions reference](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions)
   - [Setup terraform](https://github.com/hashicorp/setup-terraform)
   - [Configure AWS Credentials](https://github.com/aws-actions/configure-aws-credentials)

## Submission

- Create a branch `task_1` from `main` branch in your repository.
- [Create a Pull Request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request) (PR) from `task_1` branch to `main`.
- Provide the code for Terraform and GitHub Actions in the PR.
- Provide screenshots of `aws --version` and `terraform version` in the PR description.
- Provide a link to the Github Actions workflow run in the PR description.
- Provide the Terraform plan output with S3 bucket (and possibly additional resources) creation in the PR description.

