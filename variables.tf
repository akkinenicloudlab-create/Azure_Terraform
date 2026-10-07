variable "subscription_id" {
  description = "Azure subscription ID to deploy into"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-storage-demo"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "uksouth"
}

variable "storage_account_prefix" {
  description = "Prefix for the storage account name (lowercase letters/numbers, max 18 chars)"
  type        = string
  default     = "stdemo"

  validation {
    condition     = can(regex("^[a-z0-9]{3,18}$", var.storage_account_prefix))
    error_message = "Prefix must be 3-18 lowercase letters or numbers."
  }
}

variable "replication_type" {
  description = "LRS, ZRS, GRS, RAGRS, GZRS or RAGZRS"
  type        = string
  default     = "LRS"
}

variable "tags" {
  description = "Tags applied to all resources"
  type        = map(string)
  default = {
    environment = "dev"
    managed_by  = "terraform"
  }
}
variable "subscription_id" {
  description = "Azure subscription ID to deploy into"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-storage-demo"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "uksouth"
}

variable "storage_account_prefix" {
  description = "Prefix for the storage account name (lowercase letters/numbers, max 18 chars)"
  type        = string
  default     = "stdemo"

  validation {
    condition     = can(regex("^[a-z0-9]{3,18}$", var.storage_account_prefix))
    error_message = "Prefix must be 3-18 lowercase letters or numbers."
  }
}

variable "replication_type" {
  description = "LRS, ZRS, GRS, RAGRS, GZRS or RAGZRS"
  type        = string
  default     = "LRS"
}

variable "tags" {
  description = "Tags applied to all resources"
  type        = map(string)
  default = {
    environment = "dev"
    managed_by  = "terraform"
  }
}
