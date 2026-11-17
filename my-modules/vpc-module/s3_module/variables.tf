variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "acl" {
  description = "The canned ACL to apply"
  type        = string
  default     = "private"
}

variable "environment" {
  description = "Environment tag"
  type        = string
  default     = "dev"
}

variable "project" {
  description = "Project tag"
  type        = string
  default     = "my-project"
}

variable "versioning_enabled" {
  description = "Enable versioning on the bucket"
  type        = bool
  default     = true
}

variable "kms_key_id" {
  description = "KMS master key ID for server-side encryption"
  type        = string
  default     = null
}

variable "logging_target_bucket" {
  description = "Target bucket for access logging"
  type        = string
  default     = null
}

variable "logging_target_prefix" {
  description = "Target prefix for access logging"
  type        = string
  default     = "log/"
}

variable "lifecycle_prefix" {
  description = "Prefix for lifecycle rules"
  type        = string
  default     = ""
}

variable "expiration_days" {
  description = "Days after which objects expire"
  type        = number
  default     = 90
}
