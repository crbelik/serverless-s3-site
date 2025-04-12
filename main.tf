provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "static_site" {
    bucket = "crbelik-serverless-site"
    force_destroy = true

    tags = {
        Name       = "StaticSiteBucket"
        Environment = "Dev"
    }
}

resource "aws_s3_bucket_website_configuration" "website" {
    bucket = aws_s3_bucket.static_site.id

    index_document {
        suffix = "index.html"
    }

    error_document {
        key = "error.html"
    }
  
}

resource "aws_s3_bucket_public_access_block" "public_access" {
    bucket = aws_s3_bucket.static_site.id

    block_public_acls       = false
    ignore_public_acls      = false
    block_public_policy     = false
    restrict_public_buckets = false  
}

resource "aws_s3_bucket_policy" "site_policy" {
    bucket = aws_s3_bucket.static_site.id

    policy = jsonencode({
        Version = "2012-10-17"
        Statement = [
            {
                Effect = "Allow"
                Principal = "*"
                Action = "s3:GetObject"
                Resource = "${aws_s3_bucket.static_site.arn}/*"
            }
        ]
    })
}