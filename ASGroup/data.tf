data "aws_availability_zones" "all" {}

output "AZ" {
  value = data.aws_availability_zones.all.names
}




data "aws_ami" "image" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.0.20210617.0-x86_64-gp2*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["137112412989"] # Canonical
}