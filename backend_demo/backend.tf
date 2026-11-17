terraform {
  backend "s3" {
    bucket = "myftstatebucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-state-lock"
  }
}
