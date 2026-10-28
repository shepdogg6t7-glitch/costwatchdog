output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.aks.name
}

output "appgw_name" {
  value = azurerm_application_gateway.appgw.name
}

output "appgw_public_ip" {
  value = azurerm_public_ip.appgw_pip.ip_address
}