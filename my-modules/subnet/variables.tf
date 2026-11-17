variable "vpc_id" {
  description = "The VPC ID where the subnet will be created"
  type        = string
}

variable "cidr_block" {
  description = "The CIDR block for the subnet"
  type        = string
}

variable "availability_zone" {
  description = "The AZ for the subnet"
  type        = string
  default     = null
}

variable "name" {
  description = "Name tag for the subnet"
  type        = string
  default     = "my-subnet"
}
