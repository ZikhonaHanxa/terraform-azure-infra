variable "resource_group_name" {
    description = "Name for the resource group"
    type = string
  
}
variable "location" {
    description = "Location of the resource"
    type = string
  
}
variable "vnet_name" {
    description = " Name for the virtual network"
    type = string
}
variable vnet_cidr {
    description = "Address pool for the resources"
    type = list(string)
    default = ["10.0.0.0/16"]
}

