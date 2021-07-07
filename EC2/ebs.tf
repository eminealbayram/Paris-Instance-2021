resource "aws_ebs_volume" "example" {
  availability_zone = "eu-west-3a"
  size              = 40
  encrypted          = true
  tags = {
    Name = "HelloWorld"
  }
}
resource "aws_volume_attachment" "ebs_att" {
    device_name = "/dev/sdh"
    volume_id   = aws_ebs_volume.example.id
    instance_id = aws_instance.web.id
}