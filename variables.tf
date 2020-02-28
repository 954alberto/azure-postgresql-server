variable "azurerm_resource_group_name" {
  type        = string
  description = "The name of the resource group to create for the PostgreSQL server."
}

variable "azurerm_resource_group_location" {
  type        = string
  description = "The name of the location to use for the resource group."
}

variable "azure_postgresql_server_name" {
  type        = string
  description = "The name of the PostgreSQL server."
}

variable "sku_name" {
  type        = string
  description = "Specifies the SKU Name for this PostgreSQL Server. The name of the SKU, follows the tier + family + cores pattern (e.g. B_Gen4_1, GP_Gen5_8)."
}

variable "storage_mb" {
  type        = number
  description = "The amount of mb to allocate in the profile."
}

variable "backup_retention_days" {
  type        = number
  description = "The amount of days a backup will be kept."
}

variable "geo_redundant_backup" {
  type        = string
  description = "Enables or disables the geographical redundancy for backups."
}

variable "auto_grow" {
  type        = string
  description = "Enables or disables automatic growth ."
}

variable "administrator_login" {
  type        = string
  description = "Name of the admin user."
}

variable "administrator_login_password" {
  type        = string
  description = "Password of the admin user."
}

variable "pg_version" {
  type        = number
  description = "Version of PostgreSQL to use."
}

variable "ssl_enforcement" {
  type        = string
  description = "Enables or disables SSL enforcement."
}

variable "whitelist_ips" {
  description = "List of ips to whitelist."
}

variable "CLIENT_ID" {}
variable "CLIENT_SECRET" {}
variable "TENANT_ID" {}
variable "SUBSCRIPTION_ID" {}
