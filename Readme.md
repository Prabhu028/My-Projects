#  Netflix Clone DevSecOps Project

## Overview
This repository contains a DevSecOps project that replicates the functionality of Netflix using modern web development technologies and best practices. The frontend is developed using Node.js and React.js, with TypeScript ensuring type safety. The project integrates various DevSecOps tools such as Trivy, Docker, Terraform, Kubernetes (K8s), and Jenkins to implement comprehensive CICD pipeline.

## DevSecOps Tools

- Jenkins: Automation server for CI/CD pipelines
- Terraform: Infrastructure as Code (IaC) for provisioning cloud resources
- Docker: Containerization for consistent development and deployment environments
- Trivy: Security scanning for vulnerabilities in container images
- Kubernetes: Orchestration for automated deployment, scaling, and management of containerized applications


## Prerequisites:

* Install Jenkins:
  Run following commands
  (sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
  echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
  sudo apt-get update
  sudo apt-get install openjdk-17-jdk  jenkins -y)

* Install Docker: 
  Run following commands
   (curl -fsSL https://get.docker.com -o install-docker.sh && sudo sh install-docker.sh).

* Authenticate azure cli: 
  Run following commands
   (az login) 'The command will open a browser window prompting you to log in to your Azure account. Enter your credentials and complete the authentication process'.

* Kubectl for orchestration:
  Run following command 
   (sudo apt-get update && sudo apt-get install -y kubectl).

* Trivy for vulnerability scanning:
  Run following command
   (sudo apt-get install wget apt-transport-https gnupg lsb-release
    wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | sudo apt-key add -
    echo deb https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main | sudo tee -a /etc/apt/sources.list.d/trivy.list
    sudo apt-get update
    sudo apt-get install trivy).

## workflow

The workflow for this project includes:

- Seting up Jenkins for CI/CD automation. 
- Building the Docker image.
- Pushing the Docker image to a container registry.
- Applying Terraform scripts.
- Deploying the application to AKS cluster.

 
