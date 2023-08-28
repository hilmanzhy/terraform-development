resource "aws_instance" "ec2_instance" {
#  region        = var.region
  count         = var.instance_count
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_pair
  tags          = var.tags

  security_groups = [var.security_group]
}
