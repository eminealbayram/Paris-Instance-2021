#Creates EC2 INSTANCE
resource "aws_instance" "web" {
  ami           = data.aws_ami.amazon.id
  instance_type = var.instance_type
  key_name      = aws_key_pair.chocolate.key_name
}

