resource "aws_instance" "ec2_module" {
  ami = var.ami_example
  instance_type = var.instance_type_eg
}
