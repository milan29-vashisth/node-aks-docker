terraform {
  backend "azurerm" {
    resource_group_name  = "tf-backend-rg"
    storage_account_name = "tfstatestorage292929"
    container_name       = "tfstate"
    key                  = "acr-vm.tfstate"
  }
}
