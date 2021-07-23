resource "aws_launch_template" "NodeJSAPP_LT" {
  name_prefix          = "NodeJSAPP_LT"
  image_id             = data.aws_ami.image.id
  instance_type        = "t2.micro"
  key_name             = aws_key_pair.laptop.key_name
  user_data            = filebase64("${path.module}/userdata.sh")
  tags = {
    Team        = "DevOps"
    Environment = "Dev"
    Application = "NodeJS"
    Market      = "US"
  }

}

