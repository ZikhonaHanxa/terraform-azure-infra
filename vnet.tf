resource "azurerm_virtual_network" "vnet" {
    name = var.vnet_name
    location = var.location
    address_space = var.vnet_cidr
    resource_group_name = azurerm_resource_group.MyRG.name
  
}