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
variable "aks_name" {
  type = string
}

variable "dns_prefix" {
  type = string
}

variable "kubernetes_version" {
  type    = string
  default = "1.31"
}

variable "node_count" {
  type    = number
  default = 1
}

variable "vm_size" {
  type    = string
  default = "Standard_B2s"
}