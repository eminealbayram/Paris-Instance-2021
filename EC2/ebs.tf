resource "aws_ebs_volume" "example" {
  availability_zone = "eu-west-3a"
  size              = 40
  encrypted          = true
  tags = {
    Name = "HelloWorld"
  }
}