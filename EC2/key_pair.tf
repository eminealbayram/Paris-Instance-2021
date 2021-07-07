provider "aws" {
  region = "eu-west-3"
}
resource "aws_key_pair" "terraform_key" {
  key_name   = "terraform_key"
  public_key = file("~/.ssh/id_rsa.pub")
}