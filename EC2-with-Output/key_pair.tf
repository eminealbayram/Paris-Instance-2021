resource "aws_key_pair" "test_key" {
  key_name   = "test_key"
  public_key = file("~/.ssh/id_rsa.pub")
  tags = {
    Name      = "Web"
    CreatedBy = "Engineer"
    Team      = "DevOps"
  }
}