 Terraform AWS Network & EC2 Module Setup
This repository contains a modular Terraform configuration for provisioning foundational AWS infrastructure components, including a VPC, public/private subnets, and virtual machines (EC2). It is designed to be reusable, scalable, and environment-specific—ideal for teams deploying applications or containerized workloads (e.g., Kubernetes).

🔧 What This Project Does
✅ 1. VPC Creation
Resource: aws_vpc.main-vpc

Provisions a custom Virtual Private Cloud (VPC) with the CIDR block 10.100.0.0/16.

DNS support and hostname resolution are disabled (can be enabled based on project needs).

Tagged dynamically using environment variables (e.g., dev-main-vpc).

✅ 2. Subnet Configuration
Public Subnet:

CIDR: 10.100.10.0/24

Tagged as dev-public-subnet

Intended for public-facing resources (e.g., ALBs, NAT gateways, bastion hosts).

Private Subnet:

CIDR: 10.100.30.0/24

Tagged as dev-private-subnet

Suitable for internal services (e.g., databases, backend APIs, internal Kubernetes nodes).

✅ 3. Modular Structure
module "network": Handles all VPC and subnet provisioning from ./dev/networking.

module "vm": Deploys EC2 instances from ./dev/ec2. Depends on successful network setup (module.network).

✅ 4. Terraform Settings
Uses Terraform v1.2.0 with AWS provider version 4.16.

Default AWS region: ca-central-1 (Canada Central).

📦 Variables for Customization

Variable Name	Default Value	Description
region	ca-central-1	AWS region to deploy resources
vpc_cidr_block	10.100.0.0/16	CIDR block for the VPC
public_subnet_cidr	10.100.10.0/24	CIDR block for the public subnet
private_subnet_cidr	10.100.30.0/24	CIDR block for the private subnet
env	dev	Environment identifier (e.g., dev, prod)
team	BANK123	Team name or code
project	WebAPP	Project name
🚀 Getting Started
Clone this repo.

Initialize Terraform:

bash
Copy
Edit
terraform init
Apply the configuration:

bash
Copy
Edit
terraform apply
✅ Ideal For:
Cloud-native app deployments

Staging or dev environment setups

Kubernetes networking layers

CI/CD integration with infrastructure as code