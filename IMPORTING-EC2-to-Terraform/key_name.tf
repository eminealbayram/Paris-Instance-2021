resource "aws_key_pair" "candy_key" {
  key_name   = "candy_key"
  public_key = file("~/.ssh/id_rsa.pub")
  tags = {
    Name      = "Candy"
    CreatedBy = "Engineer"
    Team      = "DevOps"
  }
}