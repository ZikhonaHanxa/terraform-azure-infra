resource "azurerm_public_ip" "PubIP" {
    name = var.public_ip_name
    location = var.location
    allocation_method = var.allocationMethod
    resource_group_name =azurerm_resource_group.MyRG.name
  
}