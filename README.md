
---

# Terraform AWS Networking Architecture

* Take a look at this project implementation, where I explored how core AWS networking components can be designed and provisioned using Terraform. 

* Through this project, I learned how VPCs, subnets, Availability Zones, routing, and EC2 instances work together, and how Terraform helps manage this infrastructure in a structured, repeatable way.

![AWS](https://img.shields.io/badge/AWS-Cloud-orange?logo=amazonaws)
![Terraform](https://img.shields.io/badge/Terraform-IaC-844FBA?logo=terraform)
![VPC](https://img.shields.io/badge/VPC-Networking-blue)
![Public Subnet](https://img.shields.io/badge/Public_Subnet-IGW-green)
![Private Subnet](https://img.shields.io/badge/Private_Subnet-NAT-blueviolet)
![Multi-AZ](https://img.shields.io/badge/Multi--AZ-High_Availability-success)
![EC2](https://img.shields.io/badge/EC2-Compute-orange?logo=amazonec2)
![HTTPS](https://img.shields.io/badge/HTTPS-Enabled-success)
![Security Groups](https://img.shields.io/badge/Security_Groups-Firewall-critical)
![alt text](<Screenshot 2026-02-02 195718.png>)




## Overview

This repository contains a **Terraform-based implementation of core AWS networking components**, built to understand how cloud infrastructure is structured and managed using **Infrastructure as Code (IaC)**.

The project focuses on **networking fundamentals and Terraform workflows**, including VPC design, subnetting, Availability Zones, routing, and EC2 provisioning, rather than application deployment.

---

## What This Project Implements

* A **Virtual Private Cloud (VPC)**
* Multiple **public subnets** distributed across **Availability Zones**
* **EC2 instances** deployed within each subnet
* **Internet Gateway** for outbound and inbound internet access
* **Route tables** and **route table associations**
* **Remote Terraform state storage using Amazon S3**
* Infrastructure fully provisioned using **Terraform**

---

## Architecture Summary

### Networking Design

* Implemented a **single VPC** as the network boundary
* Designed **multiple public subnets**, each mapped to a different **Availability Zone**
* Deployed **EC2 instances** across Availability Zones to understand fault isolation
* Attached an **Internet Gateway** to enable internet connectivity
* Configured **route tables** to route traffic from public subnets to the Internet Gateway
* Explicitly associated route tables with subnets to control traffic flow

This setup demonstrates how AWS networking components work together to enable scalable and isolated infrastructure.

---

## Infrastructure as Code with Terraform

### Terraform Usage

* Defined all infrastructure components using **Terraform configuration files**
* Used **Terraform variables** to parameterize:

  * CIDR blocks
  * Availability Zones
  * Instance configuration
* Used Terraform **functions** to improve flexibility and reuse
* Structured resources to rely on **Terraform’s dependency graph** for correct creation order
* Managed infrastructure changes through `terraform plan` and `terraform apply`

---

### Terraform State Management

Terraform state is stored remotely in **Amazon S3**, enabling consistent and reliable infrastructure management.

This approach ensures:

* State persistence across environments
* Safer infrastructure updates
* A clear separation between configuration and state

---

## Key Learnings

Through this project, I gained hands-on experience with:

* Designing **AWS networking using VPCs and subnets**
* Understanding **CIDR-based subnetting**
* Distributing resources across **Availability Zones**
* Configuring **route tables and route table associations**
* Using **Internet Gateways** for public connectivity
* Deploying **EC2 instances** within a controlled network environment
* Managing infrastructure using **Terraform as code**
* Using **Terraform variables and functions** to write reusable and maintainable configurations
* Understanding how **Terraform state** tracks real infrastructure

This project helped solidify my understanding of **core AWS networking concepts** and how they are implemented in real environments using Terraform.

---

## Deployment Workflow

1. Configure AWS credentials
2. Initialize Terraform:

   ```bash
   terraform init
   ```
3. Review the plan:

   ```bash
   terraform plan
   ```
4. Apply the infrastructure:

   ```bash
   terraform apply
   ```

---

## Design Notes

* The architecture is intentionally simple to focus on **networking fundamentals**
* Public subnets are used to demonstrate internet connectivity
* The design can be extended to include private subnets, NAT Gateways, and load balancers

---

## Future Enhancements

* Add private subnets and NAT Gateways
* Introduce security groups with tighter rules
* Add Auto Scaling Groups
* Expand to a multi-tier application architecture

---

