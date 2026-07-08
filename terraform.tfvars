resource_group_name = "MY_RG01"
location = "southafricanorth"
vnet_name = "RG-ZKN-PRD"
subnet_name = "MySubnet"
subnet_prefixes = [ "10.0.1.0/24" ]
securtity_group_name = "vm_security_group"
sgrulename = "allow-ssh"
priorityNumber = 100
public_ip_name = "mypublicIP"
allocationMethod = "Static"
vmnic = "MYNIC"
account_tier = "Standard"
account_replication_type = "LRS"

