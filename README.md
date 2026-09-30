# AWS Infrastructure Provisioning with Terraform

## 📌 Project Overview

This project demonstrates the use of **Terraform** to provision and manage cloud infrastructure on **Amazon Web Services (AWS)** using the Infrastructure as Code (IaC) approach.

Instead of manually creating AWS resources through the AWS Management Console, Terraform is used to define, deploy, and manage the infrastructure through version-controlled configuration files.

The project focuses on building practical experience with AWS networking, compute, storage, database services, security, and Terraform state management.

---

## 🎯 Project Objectives

The main objectives of this project are to:

* Learn and apply Infrastructure as Code principles
* Provision AWS infrastructure using Terraform
* Build and configure an AWS VPC
* Configure public networking and routing
* Deploy an EC2 instance
* Configure AWS security groups
* Provision S3 storage
* Provision a DynamoDB table
* Configure Terraform remote state
* Practice Git and GitHub workflows
* Introduce infrastructure automation through GitHub Actions

---

## 🏗️ Current Architecture

```text
                         AWS Cloud
                             |
                             v
                           VPC
                             |
                    +--------+--------+
                    |                 |
                    v                 v
              Public Subnet       Amazon S3
                    |
                    v
                   EC2
                    |
                    v
             Security Group
                    |
                    v
                DynamoDB


              Terraform State
                    |
                    v
             S3 Remote Backend
```

---

## ☁️ AWS Resources

### Amazon VPC

A custom VPC provides an isolated networking environment for the infrastructure.

### Public Subnet

A public subnet is configured within the VPC for resources that require Internet connectivity.

### Internet Gateway

An Internet Gateway provides connectivity between the VPC and the Internet.

### Route Table

A route table is configured to control traffic from the public subnet through the Internet Gateway.

### Amazon EC2

An Ubuntu-based EC2 instance is provisioned using Terraform.

### Security Group

An AWS Security Group controls inbound and outbound network traffic for the EC2 instance.

### Amazon S3

An S3 bucket is provisioned as part of the AWS infrastructure.

S3 is also used for Terraform remote state management.

### Amazon DynamoDB

A DynamoDB table is provisioned using Terraform.

---

## 🗂️ Project Structure

```text
terraform-project-2/
│
├── .github/
│   └── workflows/
│       └── terraform.yml
│
├── backend-infra.tf
├── backend.tf
├── data.tf
├── dynamodb.tf
├── ec2.tf
├── main.tf
├── outputs.tf
├── providers.tf
├── s3.tf
├── variables.tf
├── .gitignore
├── .terraform.lock.hcl
└── README.md
```

### Terraform Configuration Files

| File               | Purpose                                                     |
| ------------------ | ----------------------------------------------------------- |
| `main.tf`          | Main infrastructure configuration                           |
| `providers.tf`     | Terraform provider configuration                            |
| `variables.tf`     | Input variables                                             |
| `outputs.tf`       | Terraform output values                                     |
| `data.tf`          | AWS data sources                                            |
| `ec2.tf`           | EC2 configuration                                           |
| `s3.tf`            | S3 configuration                                            |
| `dynamodb.tf`      | DynamoDB configuration                                      |
| `backend.tf`       | Terraform backend configuration                             |
| `backend-infra.tf` | Backend infrastructure configuration                        |
| `.gitignore`       | Prevents generated and sensitive files from being committed |

---

## 🚀 Getting Started

### Prerequisites

Before deploying this project, install and configure:

* Terraform
* AWS CLI
* Git
* An AWS account
* AWS credentials

Verify Terraform:

```bash
terraform version
```

Verify AWS CLI:

```bash
aws --version
```

Verify your AWS credentials:

```bash
aws sts get-caller-identity
```

---

## 📥 Clone the Repository

```bash
git clone https://github.com/bassprizzy/infastructure-terraform-project-2.git

cd infastructure-terraform-project-2
```

---

## ⚙️ Initialize Terraform

Initialize the Terraform working directory:

```bash
terraform init
```

This downloads the required provider plugins and initializes the Terraform backend.

---

## 🧹 Format Terraform Configuration

Format the Terraform files:

```bash
terraform fmt
```

---

## ✅ Validate the Configuration

Check that the Terraform configuration is syntactically valid:

```bash
terraform validate
```

---

## 🔎 Review the Infrastructure Plan

Before creating resources, review what Terraform intends to change:

```bash
terraform plan
```

Always review the plan before applying infrastructure changes.

---

## 🚀 Deploy the Infrastructure

Apply the Terraform configuration:

```bash
terraform apply
```

Terraform will ask for confirmation before creating the AWS resources.

---

## 📤 View Outputs

After deployment:

```bash
terraform output
```

This displays any values defined in the Terraform outputs configuration.

---

## 🗑️ Destroy the Infrastructure

When the infrastructure is no longer required:

```bash
terraform destroy
```

This removes the resources managed by Terraform.

> ⚠️ Always review the destroy plan carefully before confirming.

---

## 🔐 Security

Security is an important part of the project's development.

The project currently uses AWS Security Groups to control network access to the EC2 instance and Terraform remote state to manage infrastructure state centrally.

Security improvements planned for future versions include:

* Restricting SSH access to trusted IP addresses
* Implementing least-privilege IAM policies
* Enabling S3 encryption
* Enabling S3 versioning
* Blocking unnecessary public S3 access
* Adding Terraform security scanning
* Using AWS Systems Manager Session Manager where appropriate
* Improving network segmentation

Sensitive files such as Terraform state, Terraform plan files, environment files, and `node_modules` are excluded through `.gitignore`.

---

## 🔄 CI/CD

GitHub Actions is included in the project to support infrastructure automation.

The intended Terraform workflow is:

```text
        Git Push
           |
           v
   Terraform Format
           |
           v
   Terraform Validate
           |
           v
     Terraform Plan
           |
           v
    Security Checks
           |
           v
    Manual Approval
           |
           v
   Terraform Apply
```

The goal is to introduce automated infrastructure validation and safer deployment practices.

---

## 🧠 Key Concepts Practiced

This project provides hands-on experience with:

### Infrastructure as Code

Defining cloud infrastructure using Terraform configuration files rather than manually creating resources.

### Terraform State

Understanding how Terraform tracks infrastructure and how remote state can be used for centralized state management.

### AWS Networking

Working with:

* VPCs
* Subnets
* Internet Gateways
* Route Tables
* Security Groups

### Cloud Compute

Provisioning and managing an Ubuntu EC2 instance.

### Cloud Storage

Working with Amazon S3.

### NoSQL Database

Provisioning a DynamoDB table.

### Version Control

Using Git and GitHub to manage infrastructure code.

### Automation

Using GitHub Actions to introduce automated Terraform workflows.

---

## 🔮 Future Improvements

This project will continue to evolve toward a more production-oriented AWS architecture.

Planned improvements include:

* [ ] Create reusable Terraform modules
* [ ] Separate development and production environments
* [ ] Implement multi-AZ networking
* [ ] Add private subnets
* [ ] Add NAT Gateway
* [ ] Add an Application Load Balancer
* [ ] Deploy EC2 instances in private subnets
* [ ] Add RDS PostgreSQL
* [ ] Implement least-privilege IAM
* [ ] Improve S3 security configuration
* [ ] Add Terraform security scanning with Checkov
* [ ] Improve GitHub Actions CI/CD
* [ ] Add CloudWatch monitoring
* [ ] Explore AWS Systems Manager
* [ ] Improve infrastructure documentation

---

## 📚 What I Learned

Through this project, I have developed practical experience with:

* AWS
* Terraform
* Infrastructure as Code
* VPC networking
* EC2
* S3
* DynamoDB
* Security Groups
* Terraform state
* Git
* GitHub
* GitHub Actions
* Linux
* Cloud infrastructure automation

---

## 👨🏽‍💻 Author

### Bassey Prince Emekan

Mechanical Engineering graduate building practical experience in **Cloud Engineering and DevOps**.

### Technical Skills

* AWS
* Terraform
* Linux
* Docker
* Git/GitHub
* CI/CD
* Python
* Bash
* Kubernetes
* Ansible

### Connect

**GitHub:**
https://github.com/bassprizzy

**LinkedIn:**
https://www.linkedin.com/in/prince-emekan-520051210/

---

## ⭐ Project Status

**Status:** 🚧 In Development

This project is actively being improved as I continue developing my AWS, Terraform, Infrastructure as Code, and DevOps skills.

