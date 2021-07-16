provider "aws" {
    region = "eu-west-3"
}

resource "aws_instance" "Import" {
    ami = "ami-062fdd189639d3e93"
    instance_type = "t2-micro"
}







#terraform import aws_instance.web i-12345678