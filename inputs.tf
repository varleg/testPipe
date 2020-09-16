variable "client_secret" {
  type        = string
  description = "Azure Service Principal Secret"
  default     = null
}

variable "client_id" {
  type        = string
  description = "Azure Service Principal ID"

  validation {
    condition     = can(regex("^[a-f0-9-]{36}$", var.client_id))
    error_message = "The client_id does not follow the format ffffffff-ffff-ffff-ffff-ffffffffffff."
  }
}

variable "tenant_id" {
  type        = string
  description = "TenantId of the Azure AD Tenant"

  validation {
    condition     = can(regex("^[a-f0-9-]{36}$", var.tenant_id))
    error_message = "The tenant_id does not follow the format ffffffff-ffff-ffff-ffff-ffffffffffff."
  }
}

variable "subscription_id" {
  type        = string
  description = "Subscription ID of the target Azure Subscription"

  validation {
    condition     = can(regex("^[a-f0-9-]{36}$", var.subscription_id))
    error_message = "The subscription_id does not follow the format ffffffff-ffff-ffff-ffff-ffffffffffff."
  }
}

variable "region_primary" {
  type        = string
  description = "Primary region to deploy resources to."
}

variable "region_secondary" {
  type        = string
  description = "Secondary region to deploy resources to."
}

variable "environment" {
  type        = string
  description = "Name of the PX environment (e.g. dev-01, stag-01, ...)"
}

variable "tags_default" {
  type = object({
    Owner       = string
    AppName     = string
    Environment = string
  })
  description = "Default tags used for the infrastructure resources."
}

variable "state_subscription_id" {
  type        = string
  description = "Azure Subscription Id that holds the terraform backend state"
}

variable "state_resource_group_name" {
  type        = string
  description = "Azure Resource Group that holds the terraform backend state Blob Container"
}

variable "state_storage_name" {
  type        = string
  description = "Azure Storage Name of the Storage account holding the remote backend states"
  default     = null
}

variable "state_container_name" {
  type        = string
  description = "Azure Storage Container name of the Storage account holding the remote backend states"
  default     = null
}

variable "github_token" {
  type        = string
  description = "Azure token to repo's for azure"
}
