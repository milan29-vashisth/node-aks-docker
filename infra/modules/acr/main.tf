resource "random_string" "acr_suffix" {
  length  = 5
  upper   = false
  special = false
}

resource "azurerm_container_registry" "acr" {
  name                = "nodeacr${random_string.acr_suffix.result}"
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = "Basic"
  admin_enabled       = true
}