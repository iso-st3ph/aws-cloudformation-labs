# AWS CloudFormation Labs

This repository showcases hands-on AWS CloudFormation projects demonstrating real production-ready VPC architectures, security patterns, EC2 provisioning, and Infrastructure-as-Code best practices.

## 🚀 Projects Included

---

## **Day 2 — Public VPC + Web Server**

**What it builds**
- 1 VPC
- 1 Public Subnet
- Internet Gateway + Route Table
- Security Group for HTTP + SSH
- EC2 Web Server with UserData bootstrap
- CloudFormation Outputs: PublicIP + WebsiteURL

**Folder:** `day2-public-vpc-webserver/`  
**Template:** `template.yml`

---

## **Day 3 — Production VPC + Bastion + Private EC2 (Multi-AZ)**

**What it builds**
- Production-grade VPC (10.20.0.0/16)
- 2 Public Subnets (AZ1 + AZ2)
- 2 Private Subnets (AZ1 + AZ2)
- 2 NAT Gateways (High Availability)
- Public & Private Route Tables
- Bastion Host (Public subnet)
- Private EC2 (NO public IP)
- Strict SG rules (SSH only from Bastion)
- Output: Bastion Public IP + Private Instance ID

**Folder:** `day3-prod-vpc-bastion/`  
**Template:** `template.yml`

---

## 📄 Folder Structure


---

## 🧪 Testing Instructions

### Day 2
See: `day2-public-vpc-webserver/test-steps.md`

### Day 3
See: `day3-prod-vpc-bastion/test-steps.md`

---

## 🧹 Cleanup

CloudFormation → select stack → **Delete**

For Day 3, deletion is important because NAT Gateways cost money.

---

## 🎯 Purpose

This repo demonstrates:
- VPC design patterns  
- Multi-AZ deployments  
- NAT Gateway routing  
- Bastion-based secure access  
- Private EC2 access  
- CloudFormation YAML structure  
- Outputs, Parameters, and intrinsic functions  

This is **real Cloud/DevOps engineer work** and serves as part of a professional IaC portfolio.
