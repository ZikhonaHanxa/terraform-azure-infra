resource "random_id" "RANDOM_ID" {
    keepers = {
      # Only generate a unique id once a resource group has been defined
      resource_group = azurerm_resource_group.MyRG.name
    }
  byte_length = 8
}
resource "azurerm_storage_account" "STORAGE_ACCOUNT"{
    name = "diag${random_id.RANDOM_ID.hex}"
    resource_group_name = azurerm_resource_group.MyRG.name
    account_tier = var.account_tier
    location = var.location
    account_replication_type = var.account_replication_type
      
    }