# ☁️ Project 2: Terraform AWS Infrastructure + Docker Deployment

![Terraform](https://img.shields.io/badge/IaC-Terraform-623CE4)
![AWS](https://img.shields.io/badge/Cloud-AWS-FF9900)
![Docker](https://img.shields.io/badge/Container-Docker-2496ED)
![CI/CD](https://img.shields.io/badge/CI/CD-GitHub%20Actions-2088FF)

---

## 📌 Overview

This project demonstrates **end-to-end cloud infrastructure provisioning and application deployment** using **Terraform on AWS**. The infrastructure is created from scratch and a **Docker image built by a CI pipeline** is deployed on an EC2 instance.

The goal of this project is to showcase **real-world DevOps skills** such as Infrastructure as Code, secure access management, cloud networking, container deployment, and production-style debugging.

---

## 🧠 Key Skills Demonstrated

* Infrastructure as Code using **Terraform**
* AWS networking (VPC, Subnet, Internet Gateway, Routing)
* Secure EC2 access using **SSH key pairs**
* Dynamic AMI selection using Terraform **data sources**
* Docker container deployment on EC2
* Reuse of CI-built images from **GitHub Container Registry (GHCR)**
* Real-world troubleshooting (SSH, AMI, port conflicts)

---

## 🏗️ Architecture

```
GitHub (CI Pipeline)
        ↓
GitHub Container Registry (GHCR)
        ↓
Terraform (IaC)
        ↓
AWS VPC → EC2 → Docker Container (Port 80)
```

---

## 🔁 Deployment Workflow

1. Infrastructure defined using Terraform
2. Terraform provisions AWS resources
3. EC2 instance bootstrapped with Docker
4. Docker image pulled from GHCR
5. Application container runs on port **80**
6. Application accessed via EC2 public IP

---

## 🚀 How to Run (From Scratch)

```bash
# Clone repository
git clone https://github.com/Pawan-Builds/terraform-aws-devops-infra.git
cd terraform-aws-devops-infra/terraform

# Initialize Terraform
terraform init

# Review infrastructure plan
terraform plan

# Create infrastructure
terraform apply
```

After apply completes, Terraform outputs the **EC2 public IP**.

---

## 🐳 Deploy Application on EC2

```bash
# SSH into EC2
ssh -i ~/.ssh/terraform-ec2-key ec2-user@<EC2_PUBLIC_IP>

# Login to GHCR
docker login ghcr.io

# Run application container
docker run -d \
  --name devops-app \
  -p 80:5000 \
  ghcr.io/pawan-builds/devops-cicd-microservice:latest
```

---

## 💰 Cost Management

* Instance type: **t2.micro (Free Tier eligible)**
* Resources can be destroyed anytime using:

```bash
terraform destroy
```

---

## 🎯 Why This Project Matters

This project demonstrates:

* Cloud infrastructure ownership
* Production-style Terraform usage
* Secure and repeatable deployments
* Integration between CI/CD and cloud runtime

---

## 👤 Author

**Pawan Singh M**
GitHub: [https://github.com/Pawan-Builds](https://github.com/Pawan-Builds)
