resource "azurerm_linux_virtual_machine" "MYVM" {
  name = var.vm_name
  resource_group_name = azurerm_resource_group.MyRG.name
  network_interface_ids =  [ azurerm_network_interface.nic.id ]
  size = var.vmsize
  location = var.location
  os_disk {
    name = var.osdiskname
    caching = var.cachingvalue
    storage_account_type = var.mystorage_account_type
  }
  source_image_reference {
    publisher = var.image_reference_publisher
    offer = var.image_reference_offer
    sku = var.image_reference_sku
    version = var.image_reference_version
  }

  computer_name = var.virtual_machine_name 
  admin_username = var.adminusername
  disable_password_authentication = true

  admin_ssh_key {
    username = var.adminusername
    public_key = tls_private_key.SSH_key.public_key_openssh
  }
  }
