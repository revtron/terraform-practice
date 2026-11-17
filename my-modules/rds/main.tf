resource "aws_db_instance" "rds" {
  identifier                   = var.db_name
  engine                       = var.engine
  instance_class               = var.instance_class
  allocated_storage            = var.allocated_storage
  db_name                      = var.database_name
  username                     = var.username
  password                     = var.password
  skip_final_snapshot          = true
  storage_encrypted            = var.storage_encrypted
  backup_retention_period      = var.backup_retention
  multi_az                     = var.multi_az
  performance_insights_enabled = var.performance_insights
  publicly_accessible          = var.publicly_accessible
  vpc_security_group_ids       = var.security_group_ids
  monitoring_interval          = var.monitoring_interval
  monitoring_role_arn          = var.monitoring_role
  deletion_protection          = var.deletion_protection
  parameter_group_name         = var.parameter_group_name
  option_group_name            = var.option_group_name
}
