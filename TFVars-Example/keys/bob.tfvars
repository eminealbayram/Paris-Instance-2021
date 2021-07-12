region     = "eu-west-3"
key_name   = "bob"
public_key = "~/.ssh/id_rsa.pub"


key_tags = {
    Name = "Wordpress"
    Env = "Dev"
    Team = "DevOps"
}
#terraform apply -var-file keys/bob.tfvars