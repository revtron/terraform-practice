resource "aws_instance" "backend_instance_demo" {
   ami = "ami-0241b1d769b029352"
   instance_type = "t2.micro"
  
}