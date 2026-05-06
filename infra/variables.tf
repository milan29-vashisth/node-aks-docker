variable "location" {
  default = "East US"
}

variable "resource_group_name" {}

variable "acr_name" {}

variable "vm_name" {}

variable "vm_size" {
  default = "Standard_B1s"
}

variable "vm_admin_username" {
  default = "azureuser"
}

variable "vm_admin_password" {}

variable "dns_label" {}
variable "environment" {}