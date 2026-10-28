variable "resource_group_name" {
  default = "rg-aks-platform"
}

variable "location" {
  default = "eastus"
}

variable "vnet_name" {
  default = "vnet-aks-platform"
}

variable "aks_subnet_name" {
  default = "snet-aks"
}

variable "appgw_subnet_name" {
  default = "snet-appgw"
}

variable "aks_cluster_name" {
  default = "aks-platform-cluster"
}

variable "appgw_name" {
  default = "appgw-aks-platform"
}

variable "sku_capacity" {
  default = 2
}

variable "frontend_ip_configuration_name" {
  default = "appgw-frontend-ip"
}

variable "public_ip_name" {
  default = "pip-appgw-aks-platform"
}