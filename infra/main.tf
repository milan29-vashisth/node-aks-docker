module "acr" {
  source = "./modules/acr"

  acr_name            = var.acr_name
  resource_group_name = "rg-node-aks-demo"
  location            = var.location
}

module "vm" {
  source = "./modules/vm"

  environment         = var.environment
  location            = var.location
  resource_group_name = var.resource_group_name
  vm_name             = var.vm_name
  vm_size             = var.vm_size
  vm_admin_username   = var.vm_admin_username
  vm_admin_password   = var.vm_admin_password
  dns_label           = var.dns_label
}