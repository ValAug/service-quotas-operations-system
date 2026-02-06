# 📊 service-quotas-operations-system

A lightweight **AWS Service Quotas monitoring and alerting system**, built using **Terraform**, **Amazon CloudWatch**, and **Amazon SNS**.

This repository provides a repeatable, Infrastructure-as-Code approach to proactively monitor AWS service limits and notify teams before quotas become blockers.

---

## ☁️ Platform & Tooling

![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)
![Terraform](https://img.shields.io/badge/Terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)

---

## 🧭 Purpose & Use Case

AWS service quotas are one of the most common **silent failure points** in cloud environments.

This project demonstrates how to:

- Monitor **AWS Service Quotas** using CloudWatch
- Detect quota thresholds before they are exceeded
- Send automated alerts via **Amazon SNS**
- Manage everything declaratively using **Terraform**

This system is ideal for:
- Platform / DevOps teams
- Shared AWS accounts
- CI/CD-heavy environments
- Proactive capacity planning

---

## 🧱 What This System Deploys

The Terraform configuration provisions:

### Monitoring
- CloudWatch metrics and alarms for selected AWS service quotas

### Notifications
- Amazon SNS topic(s)
- Optional email or endpoint subscriptions

### Governance
- IAM permissions following **least-privilege principles**

> No agents, no Lambda functions, and no custom code required.

---

## 🛠️ Prerequisites

Before deploying, ensure the following:

- **Terraform**
  - Installed locally  
  - Installation guide:  
    https://learn.hashicorp.com/tutorials/terraform/install-cli

- **AWS CLI**
  - Installed and configured
  - Credentials must have permission to:
    - Read Service Quotas
    - Create CloudWatch alarms
    - Publish to SNS

---

## ⚠️ Important Considerations

- Follow **least privilege** IAM practices at all times  
  👉 https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#grant-least-privilege

- This project has been validated in:
  - `us-west-1`

- Other regions **should work**, but quota availability may vary by service and region.

- Deploying monitoring resources **may incur small AWS charges**, especially for:
  - CloudWatch alarms
  - SNS notifications

---

## 🚀 Deployment Guide

### 📂 Quick Start

This deployment targets the AWS account configured via your AWS CLI profile (`default` unless otherwise specified).

```bash
# Clone the repository
git clone <repository-url>
cd service-quotas-operations-system

# Initialize Terraform
terraform init

# Validate configuration
terraform validate

# Review planned resources
terraform plan

# Deploy monitoring infrastructure
terraform apply --auto-approve
````

---

### 🧹 Quick Destroy

To remove all deployed resources:

```bash
terraform destroy --auto-approve
```

⚠️ **Warning**
This will remove all CloudWatch alarms and SNS topics created by this stack.

---

## 🧰 Terraform Workflow Reference

| Command              | Description                      |
| -------------------- | -------------------------------- |
| `terraform init`     | Initialize providers and backend |
| `terraform validate` | Validate Terraform configuration |
| `terraform plan`     | Preview infrastructure changes   |
| `terraform apply`    | Create or update resources       |
| `terraform destroy`  | Remove managed infrastructure    |
| `terraform fmt`      | Format Terraform files           |

---

## 🧠 Operational Notes

* Alarms should be reviewed periodically as AWS introduces new services and quotas
* SNS subscriptions can be extended to:

  * Email
  * Slack (via HTTPS)
  * Incident management tools
* Thresholds should be tuned based on account growth patterns

---

## 🚫 Explicit Non-Goals

This repository does **not**:

* Automatically request quota increases
* Modify AWS account limits
* Replace capacity planning
* Perform remediation actions

Its role is **early warning and visibility**.

---

## 📚 Additional Resources

* AWS Service Quotas
  [https://docs.aws.amazon.com/servicequotas/latest/userguide/what-is.html](https://docs.aws.amazon.com/servicequotas/latest/userguide/what-is.html)

* Amazon CloudWatch
  [https://aws.amazon.com/cloudwatch/](https://aws.amazon.com/cloudwatch/)

* Amazon SNS
  [https://aws.amazon.com/sns/](https://aws.amazon.com/sns/)

---

**Guiding Principle:**

> Quotas should never surprise you in production.



