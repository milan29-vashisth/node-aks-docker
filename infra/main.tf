resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

module "acr" {
  source              = "./modules/acr"
  acr_name            = var.acr_name
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "vm" {
  source              = "./modules/vm"
  resource_group_name = var.resource_group_name
  location            = var.location
  vm_name             = var.vm_name
  vm_size             = var.vm_size
  vm_admin_username   = var.vm_admin_username
  vm_admin_password   = var.vm_admin_password
  dns_label           = var.dns_label
  environment         = var.environment
}

module "aks" {
  source              = "./modules/aks"
  aks_name            = var.aks_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix
  kubernetes_version  = var.kubernetes_version
  node_count          = var.node_count
  aks_vm_size         = var.aks_vm_size
  environment         = var.environment
  acr_id              = module.acr.acr_id
}
