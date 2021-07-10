resource "aws_instance" "boncuk" {
  ami                         = "ami-062fdd189639d3e93"
  instance_type               = "t3.micro"
  availability_zone           = "eu-west-3a"
  associate_public_ip_address = true
  monitoring                  = true
  key_name                    = aws_key_pair.candy_key.key_name
  tags = {
    Name      = "boncuk"
    CreatedBy = "Engineer"
    Team      = "DevOps"
  }
}

resource "aws_instance" "Candy" { #I copied and pasted info and then run terraform import aws_instance.candy i-amino and then said it is imported and then added some more info and said terraform refresh
  ami = "ami-062fdd189639d3e93"
  instance_type = "t3.micro"
  key_name = aws_key_pair.candy_key.key_name
  tags = {
    Name      = "boncuk"
    CreatedBy = "Engineer"
    Team      = "DevOps"
  }
}