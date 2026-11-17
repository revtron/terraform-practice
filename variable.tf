variable "mynewinstance" {
   type = string
   description = "this will name the bucket"
   default = "newxinstance3454yty"
  
}

variable "ami_id" {
   type = string
   description = "this is a amiid for us-east-1"
   default = "ami-04b4f1a9cf54c11d0"
  
}

variable "region" {
   type = string
   description = "this is a region name"
   default = "us-east-1"
  
}

variable "s3_bucket" {
   type = string
   description = "this is a bucket"
   default = "newbucketxx345466"
  
}

variable "bucket_count" {
   type = number
   default = 3
  
}
 variable "enable_monitoring" {
    type = bool
    default = true
  
}

variable "bucket_names" {
   type = list(string)
   default = [ "bucketlist11xcvd","bucketlist22yuioo","bucketlist33dfeer4"]
  
}

variable "ami_types" {
   type = list(string)
   default = [ "ami-01e3c4a339a264cc9", "ami-014d544cfef21b42d" ]
  
}

variable "example_ami" {
   type = map(string)
   default = {
     us-east-1 = "ami-014d544cfef21b42d"
     us-west-2 ="ami-01f5a0b78d6089704"
     key   = "value"
   }


 
  
}

variable "bucketname1" {
   type = string
   description = "this will name the bucket"
   default = "main_bucket_name1"
  
}

variable "bucketname3" {
   type = string
   description = "this will name the bucket"
   default = "main_bucket_name3"

  
}

variable "my_team_key" {
   type = string
   description = "this is my teams key to login"
   default = "teamA_key"

  
}

variable "env" {
   type = string
   

  
}

variable "enable_public_ip" {
   type = bool

}
