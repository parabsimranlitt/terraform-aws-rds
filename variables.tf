variable "db_name" {
  description = "Unique name to assign to RDS instance"
}

variable "db_username" {
  description = "RDS root username"
}

variable "db_password" {
  description = "RDS root user password"
  sensitive   = true

  validation {
    condition     = length(var.db_password) >= 8
    error_message = "The string must be at least 8 characters long."
  }
}
variable "db_encrypted" {
description = "Encrypt the database storage"
type = bool
}