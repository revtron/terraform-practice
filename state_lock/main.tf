resource "aws_instance" "backend_instance_demo" {
   ami = "ami-0241b1d769b029352"
   instance_type = "t2.micro"
  
}

resource "aws_instance" "my_imported_ec2" {
   ami ="ami-04b4f1a9cf54c11d0"
   instance_type = "t2.micro"
  
}