# Default tags
variable "default_tags" {
  default = {}
  type        = map(any)
  description = "Default tags to be appliad to all AWS resources"
}

# Name prefix
variable "prefix" {
  type        = string
  description = "Name prefix"
}

# Variable to signal the current environment 
variable "env" {
  type        = string
  description = "Deployment Environment"
}

variable "dynamodb_table_name" {
  type        = string
}

variable "read_capacity" {
  type        = string
}

variable "write_capacity" {
  type        = string
}


