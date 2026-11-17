variable "db_name" {
  description = "Database identifier"
  type        = string
}

variable "engine" {
  description = "Database engine"
  type        = string
  default     = "mysql"
}

variable "instance_class" {
  description = "Database instance class"
  type        = string
  default     = "db.t3.micro"
}

variable "allocated_storage" {
  description = "Allocated storage in GB"
  type        = number
  default     = 20
}

variable "database_name" {
  description = "Name of the initial database"
  type        = string
  default     = null
}

variable "username" {
  description = "Database administrator username"
  type        = string
}

variable "password" {
  description = "Database administrator password"
  type        = string
  sensitive   = true
}

variable "storage_encrypted" {
  description = "Specifies whether the DB instance is encrypted"
  type        = bool
  default     = true
}

variable "backup_retention" {
  description = "Days to retain backups for"
  type        = number
  default     = 7
}

variable "multi_az" {
  description = "Specifies if the RDS instance is multi-AZ"
  type        = bool
  default     = false
}

variable "performance_insights" {
  description = "Specifies whether Performance Insights are enabled"
  type        = bool
  default     = false
}

variable "publicly_accessible" {
  description = "Bool to control if instance is publicly accessible"
  type        = bool
  default     = false
}

variable "security_group_ids" {
  description = "List of VPC security group IDs to associate"
  type        = list(string)
  default     = []
}

variable "monitoring_interval" {
  description = "Interval, in seconds, between points when Enhanced Monitoring metrics are collected"
  type        = number
  default     = 0
}

variable "monitoring_role" {
  description = "ARN for the IAM role that permits RDS to send Enhanced Monitoring metrics"
  type        = string
  default     = null
}

variable "deletion_protection" {
  description = "If the DB instance should have deletion protection enabled"
  type        = bool
  default     = false
}

variable "parameter_group_name" {
  description = "Name of the DB parameter group"
  type        = string
  default     = null
}

variable "option_group_name" {
  description = "Name of the DB option group"
  type        = string
  default     = null
}
