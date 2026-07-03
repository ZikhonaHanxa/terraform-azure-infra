resource "azurerm_network_interface_security_group_association" "MyAssociation" {
    network_interface_id = azurerm_network_interface.nic.id
    network_security_group_id = azurerm_network_security_group.MySG.id
}
