data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"
  key_name  = aws_key_pair.terraform_key.key_name
  availability_zone = "eu-west-3a"
  vpc_security_group_ids = [aws_security_group.Paris-sec.id]

  tags = {
    Name = "HelloWorld"
  }
}