provider "aws" {
    region = "eu-west-3"
}



resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-emine"
  acl    = "private"
  versioning {
      enabled = true
  }

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Team        = "DevOps"
  }
}