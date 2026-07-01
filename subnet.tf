resource "azurerm_subnet" "mysubnet" {
name = var.subnet_name
resource_group_name = azurerm_resource_group.MyRG.name
virtual_network_name = azurerm_virtual_network.vnet.name
address_prefixes = var.subnet_prefixes 
}
