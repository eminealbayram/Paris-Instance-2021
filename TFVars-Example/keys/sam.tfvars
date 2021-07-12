region     = "eu-west-3"
key_name   = "sam"
public_key = "~/.ssh/id_rsa.pub"


key_tags = {
    Name = "Wordpress"
    Env = "Dev"
    Team = "DevOps"
}
#terraform apply -var-file keys/sam.tfvars 
#in order to create sam key-name