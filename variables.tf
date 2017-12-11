# declare necessary variables

variable "ec2_instance_tag" {
  default     = "BackupSchedule"
  description = "Tag to identify the EC2 target instances of the Lambda Function"
}

variable "ec2_instance_value" {
  description = "Name of backup schedule to use. You MUST provide this value and ensure it matches on your instances"
}

variable "retention_days" {
  default     = 5
  description = "Numbers of Days that the EBS Snapshots will be stored (INT)"
}

variable "unique_name" {
  default     = "v1"
  description = "Enter Unique Name to identify the Terraform environment (lowercase)"
}

variable "stack_prefix" {
  default     = "ebs_bckup"
  description = "Stack Prefix for resource generation"
}

variable "cron_expression" {
  description = "Cron expression for firing up the Lambda Function"
}

variable "regions" {
  type = "list"
}
