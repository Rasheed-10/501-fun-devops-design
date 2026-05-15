variable "project_name" {
  description = "Project name used for resource naming"
  type        = string
  default     = "501fun"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "uksouth"
}