provider "aws" {
  region = var.region
}

resource "aws_key_pair" "chocolate" {
  key_name   = var.key_name #allows people to create key with customized key_name
  public_key = file(var.public_key)
}