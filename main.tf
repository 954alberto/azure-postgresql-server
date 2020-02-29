resource "azurerm_resource_group" "azure_postgresql_server" {
  name     = var.azurerm_resource_group_name
  location = var.azurerm_resource_group_location
}

resource "azurerm_postgresql_server" "postgresql_server" {
  name                = var.azure_postgresql_server_name
  location            = azurerm_resource_group.azure_postgresql_server.location
  resource_group_name = azurerm_resource_group.azure_postgresql_server.name

  sku_name = var.sku_name

  storage_profile {
    storage_mb            = var.storage_mb
    backup_retention_days = var.backup_retention_days
    geo_redundant_backup  = var.geo_redundant_backup
    auto_grow             = var.auto_grow
  }

  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password
  version                      = var.pg_version
  ssl_enforcement              = var.ssl_enforcement
}

resource "random_uuid" "uuid" { 
  for_each = toset(var.whitelist_ips)
}

resource "azurerm_postgresql_firewall_rule" "app-server" {
  for_each = toset(var.whitelist_ips)
  name                = random_uuid.uuid[each.key].result}
  resource_group_name = azurerm_resource_group.azure_postgresql_server.name
  server_name         = azurerm_postgresql_server.postgresql_server.name
  start_ip_address    = tostring(each.value)
  end_ip_address      = tostring(each.value)
}
