variable "instance_count" {
  description = "Jumlah instance yang akan dibuat"
  type        = number
  default     = 1
}

variable "ami" {
  description = "AMI ID untuk instance EC2"
  type        = string
}

variable "instance_type" {
  description = "Tipe instance EC2"
  type        = string
}

variable "subnet_id" {
  description = "ID subnet untuk instance EC2"
  type        = string
}

variable "security_group" {
  description = "Nama security group untuk instance EC2"
  type        = string
}

variable "key_pair" {
  description = "Nama key pair untuk instance EC2"
  type        = string
}

variable "tags" {
  description = "Tags untuk instance EC2"
  type        = map(string)
  default     = {}
}
