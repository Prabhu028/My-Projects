#  Netflix Clone DevSecOps Project

## Table of Contents

- Introduction
- Features
- Prerequisites
- Security



## Introduction

This project is a Netflix Clone application designed to demonstrate a complete DevSecOps pipeline. 
It is containerized with Docker, automated with Jenkins, and uses several tools like Trivy and Kubescape to ensure security and scalability:
 - Docker for containerization.
 - Trivy for Docker image scanning.
 - Terraform for infrastructure as code (provisioning an AKS cluster).
 - Kubernetes for deploying and managing the application.
 - Kubescape for Kubernetes security scanning.

## Features

- Netflix-like UI for streaming media content.
- Automated CI/CD pipeline with Jenkins.
- Containerized using Docker for consistency across environments.
- Security scanning of Docker images with Trivy.
- Infrastructure managed with Terraform.
- Deployment on Azure Kubernetes Service (AKS).
- Kubernetes cluster security scanning with Kubescape.

## Prerequisites:

* Install Jenkins from:
  https://www.jenkins.io/doc/book/installing/linux/

* Install Docker: 
  Run following commands
   (curl -fsSL https://get.docker.com -o install-docker.sh && sudo sh install-docker.sh).
   (sudo usermod -aG docker jenkins, sudo systemctl restart docker.)
   
* Authenticate azure cli: 
  Run following commands
   (az login) 'The command will open a browser window prompting you to log in to your Azure account. Enter your credentials and complete the authentication process'.

* Kubectl for orchestration:
  Run following command 
   (sudo apt-get update && sudo apt-get install -y kubectl).

* Trivy for vulnerability scanning:
  install from this:
  https://aquasecurity.github.io/trivy/v0.18.3/installation/


## Pipeline Workflow

# Source Code Management
- GitHub: Utilizes GitHub for managing the application’s source code. 
- Code changes are tracked and versioned through GitHub repositories.

# Continuous Integration/Continuous Deployment (CI/CD) with Jenkins
- Jenkins Pipeline: Automates the build, test, and deployment processes using a Jenkins pipeline. 
- The pipeline is triggered by code commits to the repository via Webhooks.

# Build Step
- Docker: Builds Docker images from the application’s source code.
- Docker Hub: Pushes the built images to Docker Hub, a Docker registry for storing and managing Docker images.

# Test
- Image Scanning with Trivy:
 Integrates Trivy into the Jenkins pipeline to scan Docker images for vulnerabilities before proceeding to deployment.

# Infrastructure Provisioning with Terraform
- Terraform Scripts:
- Develops and manages an AKS (Azure Kubernetes Service) cluster using Terraform scripts.
- Stores these scripts in version control for consistency and collaboration.

# Application Deployment with Kubernetes
- Kubernetes Manifests:
- Uses Kubernetes manifests to deploy the application to the AKS cluster.
- Manages application scaling, updates, and rollback using Kubernetes features.

# Security Scanning with Kubescape:
- Integrates Kubescape into the pipeline to perform security scans on the Kubernetes cluster.
- Ensures compliance with Kubernetes security best practices and policies.

# Accessing the Application
- Once deployed, the application can be accessed via the AKS LoadBalancer IP address. 

 <'http://loadbalancer-ip'> 










![Alt text](<Screenshot 2024-06-12 234138.png>)

![Alt text](<Screenshot 2024-06-12 232704-1.png>) 

![Alt text](<Screenshot 2024-06-12 232824-1.png>) 

![Alt text](<Screenshot 2024-06-12 232951-1.png>)

![Alt text](<Screenshot 2024-06-12 233322-1.png>)