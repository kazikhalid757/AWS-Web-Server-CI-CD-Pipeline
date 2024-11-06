# AWS CI/CD Pipeline Project 

## Task-01: Setting up AWS CodeCommit Repository

### 1. Create a CodeCommit Repository
1. Login to AWS Management Console and navigate to CodeCommit service.
2. Click on "Create repository".
3. Enter a name and configure optional settings (description, default branch name, visibility).
4. Repository successfully created.

### 2. Setup Git Credentials in AWS IAM
1. Go to IAM console.
2. Select "Users" in the left-hand menu and click on your username.
3. Add permissions: `AWSCodeCommitFullAccess` and `AWSCodeCommitPowerUser`.
4. Scroll to "Security credentials" and click "Generate credentials" under "HTTPS Git credentials for AWS CodeCommit".
5. Download the generated Git credentials.

### 3. Clone the Repository Locally
1. Navigate to your CodeCommit repository and copy the HTTPS clone URL.
2. Open terminal and run:
   ```
   git clone <your-codecommit-repo-clone-https-url>
   ```

### 4. Add and Push Changes to CodeCommit
1. Create All Project File
2. Open terminal and run:

```
git status
git add .
git commit -m "added new file"
git push origin master
```
## Task-02: AWS CodeCommit and CodeBuild Setup

### 1: Create and Add `index.html` to CodeCommit
### 2: Create buildspec.yml
### 3: Setup and Run CodeBuild Project
1. Navigate to AWS CodeBuild and create a new build project.
2. Provide repository details.
3. Choose the environment and operating system.
4. Select "Use build spec file".
5. Click "Create build project".
6. Start the build and verify all phases.

### 4: Store Build Details in S3
1. Create an S3 bucket.
2. Edit the build project to add artifact storage details.
3. Retry the build and verify the UPLOAD_ARTIFACT phase.
4. Check the S3 bucket for the build artifacts.



## Task-03: AWS Code Deploy Setup

### 1: Create a Application
1. Sign in to the AWS Management Console.
2. Navigate to the CodeDeploy service.
3. Click on "Create application."
4. Enter a name for the application.
5. Choose the compute platform (e.g., EC2/On-Premises or Lambda).

### 2: Create a Deployment Group
1. In the CodeDeploy console, navigate to the application you created.
2. Click on "Create deployment group."
3. Enter a name for the deployment group.
4. Choose the service role (ensure the role has the necessary permissions).
5. Configure deployment settings (e.g., deployment type, deployment config).
6. Define the deployment group’s target (e.g., EC2 instances, Auto Scaling groups).
7. Configure alarms (optional) and additional settings.
8. Click "Create deployment group."
### 3: EC2 Update
1. Install Codedeploy Agent on EC2
  ```
 chmod +x install.sh
 ./install.sh
```
2. Create New Service Role for EC2 and give full access [S3,CodeDeploy,EC2]
3. Click Action -> Security -> Enter Services Role -> Update IAM Role
4. Rester Code deploy agent.
   ```
   sudo service codedeploy-agent restart
   ```
### 4: Create a Deployment
1. In the CodeDeploy console, navigate to your application.
2. Click on "Create deployment."
3. Choose the deployment group you created.
4. Select the revision type (e.g., GitHub, S3).
5. Provide the necessary details for the revision (e.g., repository URL, S3 bucket).
6. Configure deployment options (e.g., deployment configuration, rollback settings).
7. Click "Create deployment."

## Task-04: AWS Code Pipeline Setup

### 1: Just Create a Pipeline
 1. Sign in to the AWS Management Console.
 2. Navigate to the CodePipeline service.
 3. Click on "Create pipeline."
 4. Enter a name for the pipeline.
 5. Choose an existing or create a new service role.
 6. Configure the source stage (e.g., GitHub, CodeCommit, S3).
 7. Add a build stage (optional) if you need to build your code (e.g., AWS CodeBuild).
 8. Add a deploy stage and select AWS CodeDeploy as the deployment provider.
 9. Configure the pipeline settings and review the configuration.
 10. Click "Create pipeline."
