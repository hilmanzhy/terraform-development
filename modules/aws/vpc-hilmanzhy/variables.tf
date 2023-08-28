variable "vpc_name" {
  description = "Nama VPC"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block untuk VPC"
  type        = string
}

variable "subnet_cidr_block" {
  description = "CIDR block untuk subnet"
  type        = string
}
