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