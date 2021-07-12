region        = "eu-west-3"
key_name      = "emine"
instance_type = "t3.micro"
public_key    = "~/.ssh/id_rsa.pub"


key_tags = {
  Name = "Wordpress"
  Env  = "Dev"
  Team = "DevOps"
}

