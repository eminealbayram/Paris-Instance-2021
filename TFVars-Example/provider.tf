provider "aws" {
    region = var.region
}

resource "aws_key_pair" "chocolate" {
  key_name   = "chocolate"
  public_key = file("~/.ssh/id_rsa.pub")
}