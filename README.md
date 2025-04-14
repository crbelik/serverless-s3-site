# Serverless S3 Static Website (Terraform)

![Deploy S3 Site](https://github.com/crbelik/serverless-s3-site/actions/workflows/deploy.yml/badge.svg)

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

## Preview

![Screenshot of deployed static site](site-preview.png)

## Usage:

```bash
terraform init
terraform apply
```
