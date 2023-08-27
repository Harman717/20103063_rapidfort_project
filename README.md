
# DOCUMENTATION
# Creating a REST API-based Web Server with Flask, Hosting it Locally, Using GitHub Actions for Docker Containerization and Deployment using Kubernetes manifest files

This repository contains a guide and code to create a REST API-based web server using Python Flask. The web server will accept file uploads and provide information about the uploaded files. Additionally, we'll set up a GitHub Actions pipeline to build a Docker container for the application and Deploy it using Kubernetes manifest files.

# Introduction to REST APIs

REST (Representational State Transfer) is an architectural style for designing networked applications. It follows certain principles to create APIs that are scalable, stateless, and can be accessed over the HTTP protocol. REST APIs are built around resources (e.g., files, data) and use standard HTTP methods (GET, POST, PUT, DELETE) to perform actions on these resources.

# API Methods: GET vs. POST
When designing REST APIs, the choice between using the GET and POST methods is crucial:
- GET: Used for retrieving data from the server. It should not modify the server's state. In our case, a GET request to the root endpoint (/) returns a welcome message, indicating that the server is up and running.
- POST: Used to submit data to be processed by the server. In our case, the POST request to /upload is used to send files to the server for processing. This is an appropriate use case for POST as it changes the server's state by uploading and processing a file.

# Table of Contents

- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
  - [Clone the Repository](#1-clone-the-repository)
  - [Setup a Virtual Environment](#2-setup-a-virtual-environment)
  - [Install Dependencies](#3-install-dependencies)
  - [Run the Flask App](#4-run-the-flask-app)
- [GitHub actions for docker containerization](#github-actions-for-docker-containerization)
  - [Docker Setup](#1-docker-setup)
  - [Create a Dockerfile](#2-create-a-dockerfile)
  - [GitHub Actions Workflow](#3-github-actions-workflow)
- [Deployment Using Kubernetes Manifest files](#Deployment-Using-Kubernetes-Manifest-files)
  
## Prerequisites

- Python
- Flask
- Docker (for containerization)
- Github
- Dockerhub
- An understanding of REST API concepts
- Kubernetes manifest files(Minikube and kubectl)

## Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/Harman717/20103063_rapidfort_project.git
cd 20103063_rapidfort_project.git
```
### 2. Setup a Virtual Environment
```
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

```
### 3. Install Dependencies
```
pip install -r requirements.txt

```
### 4. Run the Flask app
```
python main.py
```
You can run the application on localhost:5000 on your browser.

## Guthub actions for docker containerization

### 1. Docker Setup
Install Docker Desktop or Docker Engine for containers.

### 2. Create a Dockerfile
Copy the Dockerfile from the repository itself.

### 3. Github Actions Workflow

 - Open the repository Settings, and go to Secrets and variables > Actions.
 - Create a new secret named DOCKERHUB_USERNAME and your DOCKERHUB_PASSWORD.
 - Click on Actions tab in github after pushing your files.
 - Choose Build and push Dockerfile workflow.
 - Make changes to yaml file similar to yaml file in the repository.
After following these steps, you will see your docker image in your repository you made at DockerHub.


## Deployment Using Kubernetes Manifest files

Make Sure to install Kubectl and Minikube for Local Deployment on Kubernetes Cluster.

```
kubectl create namespace [yourchoice]

# Create rapiddeployment.yaml
kubectl apply -f rapiddeployment.yaml -n [yourchoice]

# Check deployment status
kubectl get deploy -n f

# Forward local port to container port
kubectl port-forward deployment/rapiddeployment -n [yourchoice] 5000:5000

```
# SNIPPETS

<img width="359" alt="image" src="https://github.com/Harman717/20103063_rapidfort_project/assets/76901738/6131a89a-665a-400f-b780-3661daa86131">

<img width="1150" alt="image" src="https://github.com/Harman717/20103063_rapidfort_project/assets/76901738/678fd45b-2ec6-43a7-962e-3d56dbca6eb2">







