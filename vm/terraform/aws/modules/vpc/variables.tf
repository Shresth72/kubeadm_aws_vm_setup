variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "public_subnet_1_cidr" {}
variable "public_subnet_2_cidr" {}
variable "public_subnet_3_cidr" {}