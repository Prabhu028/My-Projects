Overview

This repository contains a DevSecOps project (Netflix-clone) developed using Node.js and React.js for the frontend, TypeScript for type safety, and various tools such as Trivy, Docker, Terraform, Kubernetes (K8s), and Jenkins for implementing DevSecOps practices.

Prerequisites:

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


 
