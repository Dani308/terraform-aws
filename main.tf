terraform {
  required_version = ">= 0.12"

  required_providers {
    aws  = {
        sourcer = "hashicorp/aws"
        version = "4.21.0"
    }
  }
  
}


provider "aws"{
    region = "us-east-1"
}

resource "aws_s3_bucket" "my-test-bucket" {
    bucket = "my-tf-test-bucket-545645641"
    acl = "private"

    tags = {
      Name      = "My bucket"
      Enviroment = "Dev"
      Manegedby = "Terraform"
    }
}