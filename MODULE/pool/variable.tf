variable "region" {
  type        = string
  description = "Please provide your region"
  default     = "eu-west-3"
}
variable "key_name" {
  type        = string
  description = "Please provide your key_name"
}
variable "public_key" {
  type        = string
  description = "Please provide your public_key"
}

variable "key_tags" {
  type        = map(any)
  description = "Please provide your tags"
}

variable "instance_type" {
  type        = string
  description = "Please provide your instance type"
}