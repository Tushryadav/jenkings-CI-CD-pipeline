# 🚀 CI/CD Pipeline Overview

This project demonstrates a CI/CD pipeline using Jenkins for deploying a simple web application to AWS. Below are the details of the project structure and instructions for setup and usage.

Below is the architecture of the CI/CD pipeline used in this project:

<p align="center">
  <img src="assets/Screenshot 2025-11-05 143906.png" alt="CI/CD Pipeline Diagram" width="800"/>
</p>

## Project Structure

```
jenkins-aws-cicd-demo
├── Jenkinsfile                # CI/CD pipeline script
├── deploy/
│   ├── app/
│   │   └── index.html         # Demo web application
│   └── scripts/
│       └── deploy.sh          # Deployment shell script
├── screenshots/               # Directory for screenshots
└── README.md                  # Project documentation
```

## Setup Instructions

1. **Clone the Repository**
   Clone this repository to your local machine using:
   ```
   git clone <repository-url>
   ```

2. **Install Jenkins**
   Follow the official Jenkins installation guide to set up Jenkins on your server or local machine.

3. **Configure Jenkins**
   - Install necessary plugins such as Git, Pipeline, and any AWS-related plugins.
   - Create a new pipeline job and point it to the `Jenkinsfile` in this repository.

4. **AWS Configuration**
   - Ensure you have an AWS account and the necessary permissions to deploy resources.
   - Configure your AWS credentials in Jenkins using the Credentials plugin.

5. **Deployment Script**
   - Modify the `deploy/scripts/deploy.sh` script as needed to fit your deployment requirements (e.g., deploying to EC2 or S3).

## Usage Guidelines

- Trigger the pipeline in Jenkins to start the CI/CD process. This will execute the stages defined in the `Jenkinsfile`, including building, testing, and deploying the application.
- Monitor the Jenkins dashboard for build status and logs.

## Screenshots

Refer to the `screenshots/` directory for visual documentation of the Jenkins dashboard, GitHub webhook configuration, and successful builds.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.
