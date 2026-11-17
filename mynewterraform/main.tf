module "my_instance_from_module" {
  source = "./ec2-module"
  ami_example = "ami-12445677"
  instance_type_eg ="t2.micro"

}


module "my_instance_from_module2" {
  source           = "./ec2-module"
  ami_example      = "ami-12345599"
  instance_type_eg = "t2.micro"


}

module "my_instance_from_module3" {
  source           = "./ec2-module"
  ami_example      = "ami-1456272"
  instance_type_eg = "t2.micro"


}
# module "my_new_s3_bucket" {
#   source = "value"
# }

module "my_new_s3_bucket" {
  source = "c:/Users/sohail/OneDrive/Desktop/Terraform2/vpc-module/s3_module"

}

module "my_another_s3_bucket" {
  source = "c:/Users/sohail/OneDrive/Desktop/Terraform2/vpc-module/s3_module"
}
