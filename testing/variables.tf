variable "aws_secret_key" {
  description = "AWS Secret Key"
  type        = string
}

variable "aws_access_key" {
  description = "AWS Access Key"
  type        = string
}

variable "vpc_name" {
  description = "Nama VPC"
  type        = string
  default     = "DefaultVPC"
}

variable "region" {
  description = "Nama region"
  type        = string
  default     = "ap-southeast-1"
}

variable "cidr_block" {
  description = "CIDR block untuk VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
  description = "CIDR block untuk subnet"
  type        = string
  default     = "10.0.0.0/24"
}

variable "tfvars_file" {
  description = "Path ke file terraform.tfvars"
  type        = string
  default     = "terraform.tfvars"
}
