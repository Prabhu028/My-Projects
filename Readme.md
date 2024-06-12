#  Netflix Clone DevSecOps Project

## Table of Contents

- Introduction
- Features
- Prerequisites
- Security



## Introduction

This project is a Netflix Clone application designed to demonstrate a complete DevSecOps pipeline. It is containerized with Docker, automated with Jenkins, and uses several tools to ensure security and scalability:

1.Docker for containerization.
2.Trivy for Docker image scanning.
3.Terraform for infrastructure as code (provisioning an AKS cluster).
4.Kubernetes for deploying and managing the application.
5.Kubescape for Kubernetes security scanning.

## Features

Netflix-like UI for streaming media content.
Automated CI/CD pipeline with Jenkins.
Containerized using Docker for consistency across environments.
Security scanning of Docker images with Trivy.
Infrastructure managed with Terraform.
Deployment on Azure Kubernetes Service (AKS).
Kubernetes cluster security scanning with Kubescape.
Architecture

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

## Security

- This project integrates security at multiple stages:
  1.Docker images are scanned with Trivy to identify vulnerabilities.
  2.The Kubernetes cluster is scanned with Kubescape to ensure security compliance.


![Alt text](<Screenshot 2024-06-12 234138.png>)
![Alt text](<Screenshot 2024-06-12 232704-1.png>) 
![Alt text](<Screenshot 2024-06-12 232824-1.png>) 
![Alt text](<Screenshot 2024-06-12 232951-1.png>) 
![Alt text](<Screenshot 2024-06-12 233322-1.png>)