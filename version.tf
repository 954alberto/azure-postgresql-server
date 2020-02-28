terraform {
  required_version = ">= 0.12"
}

provider "azurerm" {
  version         = "=2.0.0"
  client_id       = var.CLIENT_ID
  client_secret   = var.CLIENT_SECRET
  tenant_id       = var.TENANT_ID
  subscription_id = var.SUBSCRIPTION_ID
  features {}
}
