variable "region" {
    type = string
    description = "Please provide your region"
    #default = "eu-west-1" 
    #however, tfvars overwrites it if we do not delete it in tfvars.
    #So when we add default, and we remove region in tfvars, it will take from variable.tf
    #If we don't need default, then region should be stated in tfvars.
    
}
variable "key_name" {
    type = string
    description = "Please provide your key_name"
}
variable "public_key" {
    type = string
    description = "Please provide your public_key"
}

variable "key_tags" {
    type = map
    description = "Please provide your tags"
}