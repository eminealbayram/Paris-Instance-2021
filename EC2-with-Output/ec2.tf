resource "aws_instance" "web" {
  ami                         = "ami-062fdd189639d3e93" #copied from Amazon from first window when we want to create a new instance.
  instance_type               = "t3.micro"
  count                       = 3
  availability_zone           = "eu-west-3a"
  associate_public_ip_address = true
  monitoring                  = true
  key_name                    = aws_key_pair.test_key.key_name
  user_data                   = file("user_data.sh")
  tags = {
    Name      = "Web ${count.index + 1}"
    CreatedBy = "Engineer"
    Team      = "DevOps"
  }
}
#this is dynamic code

