terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0-beta3"
    }
  }
}

provider "aws" {
   region = "ap-southeast-2"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "rsschool-s3-bucket-terraform"

  tags = {
    Name        = "MyS3Bucket"
    Environment = "Dev"
  }
} 