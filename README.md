# service-quotas-operations-system


###### Cloud - :cloud:
![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)

###### IaaC
![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)

## Purpose

This project demonstrates how to monitor AWS Service Quotas using CloudWatch and send alerts via SNS, all configured through Terraform.

## Prerequisites

- **Terraform**: Ensure you have Terraform installed. Follow the [installation guide](https://learn.hashicorp.com/tutorials/terraform/install-cli).
- **AWS CLI**: Install and configure the AWS CLI with the necessary permissions.

## Cautions

- As an AWS best practice, grant this code least privilege, or only the permissions required to perform a task. For more information, see [Grant Least Privilege](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#grant-least-privilege) in the *AWS Identity and Access Management User Guide*.
- This code has been tested in the `us-west-1` AWS region, but it should work in other regions as well.
- Running this code may result in charges to your AWS account.

## How to Run This Code

- [How to Run This Code](#how-to-run-this-code)
- [Quick Start](#quick-start)
- [Quick Destroy](#quick-destroy)
- [Notes](#notes)

## Quick Start

This setup will deploy to the AWS account configured with the AWS CLI under the profile called 'default' or any specified profile.

```bash
# Clone this repository
git clone <repository-url>
cd service-quotas-operations-system

# Initialize Terraform
terraform init

# Validate the configuration
terraform validate

# Plan the deployment
terraform plan

# Apply the configuration
terraform apply --auto-approve
```

## Quick Destroy

To remove the deployed infrastructure, run:

```bash
terraform destroy --auto-approve
```

## Notes

- **Clone this repo**: Make sure to clone the repository to your local machine.
- **Change Directory**: Navigate to the `AWS-Service-Quota-Monitoring` directory.
- **Initialize Terraform**: Use `terraform init` to prepare your working directory for other commands.
- **Validate Configuration**: Use `terraform validate` to check whether the configuration is valid.
- **Plan Changes**: Use `terraform plan` to show changes required by the current configuration.
- **Apply Configuration**: Use `terraform apply` to create or update infrastructure. You can use `terraform apply --auto-approve` to skip the confirmation prompt.
- **Destroy Infrastructure**: Use `terraform destroy` to remove previously created infrastructure. You can also use `terraform destroy --auto-approve` to skip the confirmation prompt.
- **Format Configuration**: Use `terraform fmt` to reformat your configuration in the standard style.

## Additional Resources

- **AWS Service Quotas**: Learn about managing service quotas in AWS [here](https://docs.aws.amazon.com/servicequotas/latest/userguide/what-is.html).
- **Amazon SNS**: Read more about Amazon Simple Notification Service [here](https://aws.amazon.com/sns/).
- **Amazon CloudWatch**: Explore Amazon CloudWatch for monitoring AWS resources [here](https://aws.amazon.com/cloudwatch/).
