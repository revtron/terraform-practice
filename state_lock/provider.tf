terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
  alias = "us-west-2"
}

provider "aws" {
   region = "us-east-1"
   alias = "us-east-1"
  
}