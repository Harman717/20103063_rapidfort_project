# Creating a REST API-based Web Server with Flask, Hosting it Locally, and Using GitHub Actions for Docker Containerization

This repository contains a guide and code to create a REST API-based web server using Python Flask. The web server will accept file uploads and provide information about the uploaded files. Additionally, we'll set up a GitHub Actions pipeline to build a Docker container for the application.

# Table of Contents

- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
  - [Clone the Repository](#1-clone-the-repository)
  - [Setup a Virtual Environment](#2-setup-a-virtual-environment)
  - [Install Dependencies](#3-install-dependencies)
  - [Run the Flask App](#4-run-the-flask-app)
  - [Upload a File](#5-upload-a-file)
- [GitHub Actions for Docker Containerization](#github-actions-for-docker-containerization)
  - [Docker Setup](#1-docker-setup)
  - [Create a Dockerfile](#2-create-a-dockerfile)
  - [GitHub Actions Workflow](#3-github-actions-workflow)
  - [Push to GitHub](#4-push-to-github)
- [Conclusion](#conclusion)

## Prerequisites

- Python (3.6 or higher)
- Flask
- Docker (for containerization)
- Github
- Dockerhub
- An understanding of REST API concepts
- Kubernetes manifest files(Minikube and kubectl)

## Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/your-repo.git
cd your-repo
