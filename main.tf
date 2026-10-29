terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket_prefix = "my-Detron-2026-Phillips-s3-"

  tags = {
    Name        = "My Terraform Bucket"
    Environment = "Dev"
  }
}
