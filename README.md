# Serverless S3 Static Website (Terraform)

This project provisions a static website on AWS s3 using terraform.

## Stack:

- Terraform
- AWS S3
- AWS IAM
- AWS CLI
- GitHub

## What it does:

- Creates a S3 bucket
- Enables static website hosting
- Applies public access policy
- Outputs the live website URL

## Live Site:

[crbelik-serverless-site.s3-website-us-east-1.amazonaws.com](crbelik-serverless-site.s3-website-us-east-1.amazonaws.com)

## Usage:

```bash
terraform init
terraform apply
```