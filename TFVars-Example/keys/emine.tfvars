region     = "eu-west-3"
key_name   = "emine"
public_key = "~/.ssh/id_rsa.pub"


key_tags = {
    Name = "Wordpress"
    Env = "Dev"
    Team = "DevOps"
}
#terraform apply -var-file keys/emine.tfvars 
#in order to create emine key-name