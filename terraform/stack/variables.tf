variable "region" {
    description = "AWS region"
    type        = string
    default     = "ap-southeast-2"
}

variable "profile" {
  description = "IAM Profile"
  type        = string
  default     = "289490658370_289490658370.admin"
  sensitive   = true
}

variable "account_id" {
  description = "AWS Account ID"
  type        = string
  default     = "289490658370"
  sensitive   = true

  validation {
    condition     = length(var.account_id) == 12 && length(regexall("[^0-9]", var.account_id)) == 0
    error_message = "The account number must be 12 characters, and only contain numbers."
  }
}

variable "project_name" {
    description = "High level description of project"
    type        = string
    default     = "ml-pipeline"
}

variable "repository_name" {
    description = "Name for CodeCommit repository"
    type        = string
    default     = "ml-pipeline-repo"
}

variable "terraform_state_bucket_name" {
    description = "Name of S3 bucket to store state"
    type        = string
}

variable "terraform_state_lock_table_name" {
    description = "Name of DynamodDB table to lock state"
    type        = string
}

variable "terraform_state_key" {
    description = "S3 Key for the backend Terraform state file."
    type        = string
}

variable "project_root_dir" {
    description = "Project root directory (as opposed to Terraform module root)"
    type        = string
}

variable "stage" {
    description = "Prefix for stage"
    type        = string
}