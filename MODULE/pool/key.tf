resource "aws_key_pair" "chocolate" {
  key_name   = var.key_name
  public_key = file(var.public_key)
  tags       = var.key_tags
}