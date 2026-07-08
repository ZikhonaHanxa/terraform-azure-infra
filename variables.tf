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
variable "subnet_name" {
    type = string
    description = "The name of the subnet"
  
}
variable "subnet_prefixes" {
    type = list(string)
    description = "address range"
    default = [ "10.0.1.0/24" ]
    }
variable "securtity_group_name" {
    type = string
    description = "Security group name"
      
    }
variable "sgrulename" {
    type = string
    description = "My security group rule name"
  
}
variable "priorityNumber" {
    type = number
    description = "Rule priority number"  
}
variable "public_ip_name" {
    type = string
    description = "Public IP creation"  
}
variable "allocationMethod" {
    description = "Method for allocating public IPs"
  
}
variable "vmnic" {
    type = string
    description = "Network Interface Name"
  
}
variable "account_tier" {
    type = string
  
}
variable "account_replication_type" {
    type = string
  
}
variable "vm_name" {
    type = string
    description = "Name of the virtual machine"
  
}

variable "vmsize" {
    type = number
    description = "My virtual machine size"
    default = 100
}
variable "osdiskname" {
    type = string
    description = " MY OS DIKS"
}

variable "cachingvalue" {
    description = "My caching value"
    type = string
    default = true
}
variable "mystorage_account_type" {
    type = string
    description = " type of storage account "
}
variable "image_reference_publisher" {
    type = string
    description = "Image publisher"
  
}
variable "image_reference_offer" {
    type = string
    description = "Image offer"
  
}
variable "image_reference_sku" {
    type = string

}
variable "image_reference_versiuon" {
  type = string
}
variable "adminusername" {
    type = string
  
}
variable "password_authentication" {
    type = string
    default = "yes"
  
}
variable "virtual_machine_name" {
  type = string
}
variable "image_reference_version" {
  type = string
}

