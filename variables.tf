variable "aws_access_key" {}
variable "aws_secret_key" {}

variable "aws_ami" {
  description = "aws ami"
}

variable "key_name" {
  description = "SSH key name in your AWS account for AWS instances."
}

variable "key_path" {
  description = "Path to the private key specified by key_name."
}

variable "aws_region" {
  default = "ap-southeast-2"
  description = "The region of AWS, for AMI lookups."
}

variable "aws_vpc" {
  description = "The vpc to launch in"
}

variable "db_username" {
}

variable "db_password" {
}

variable "db_host" {
}

variable "db_name" {
}
