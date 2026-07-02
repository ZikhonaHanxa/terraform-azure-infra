resource "azurerm_network_interface" "nic" {
    name = var.vmnic
    location = var.location
    resource_group_name = azurerm_resource_group.MyRG.name
    ip_configuration {
      name = myNicConfiguration
      subnet_id = abs()
      private_ip_address_allocation = abs()
      public_ip_address_id = 
    }
}