variable "region" {
  type        = string
  description = "Please provide your region"
  default     = "eu-west-3"
}
variable "sec_group_name" {}
variable "description" {}
variable "from_port" {}
variable "to_port" {}

variable "allowed_hosts" {
  type        = list(any)
  description = "Please provide list of IPs"
}

variable "key_tags" {
  type        = map(string)
  description = "Please provide your tags"
}