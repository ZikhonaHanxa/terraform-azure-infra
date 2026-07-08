# Azure Infrastructure with Terraform

This repository contains Infrastructure as Code (IaC) for provisioning resources in **Microsoft Azure** using Terraform.  
Each version milestone represents a new building block in the cloud environment.

---

# Version History
v1.0 → Resource Group created

v1.1 → Virtual Network provisioned (vnet_name, vnet_cidr added)

v1.2 → Subnet Deployment (subnet_name, subnet_prefixes added)

v1.3 → Network Security Group created (nsg_name, rules, association with subnet_name)

v1.4 → Public IP provisioned (public_ip_name, allocation method, SKU)

v1.5 → Network Interface created with IP configuration parameters

v1.6 → Network Interface and Network Security Group associated

v1.7 → Storage account creation planned

v1.8 → Storage account created

v1.9 → SSH keys generated

v2.0 → Linux VM created after fixing configuration issues

Key Updates in v2.0
To successfully deploy the Linux VM, the following changes were made:

VM Size changed from Standard_D2_v2 to Standard_DS2_v2  
→ DS-series supports Premium SSDs, required by the OS disk.

Disk Type kept as Premium_LRS  
→ Now compatible with the DS-series VM size.

Image SKU corrected from 18.04-TLS to 18.04-LTS  
→ Ensures Azure can find the correct Ubuntu image.

Image Version updated from "Default" to "latest"  
→ Allows Terraform to always pull the newest image version.

Network Interface IDs fixed to use a list:

hcl
network_interface_ids = [azurerm_network_interface.nic.id]
Computer Name corrected from computername to computer_name.

Files
providers.tf → Defines the AzureRM provider

resource_group.tf → Creates the Resource Group

vnet.tf → Creates the Virtual Network

subnet.tf → Subnet configuration (subnet_name, subnet_prefixes)

security_group.tf → Defines the Network Security Group (nsg_name, rules)

nsg_association.tf → Associates NSG with subnet_name

public_ip.tf → Creates a Public IP resource

virtual_machine.tf → VM configuration (Linux VM with Premium SSDs)

variables.tf → Input variables for flexibility

outputs.tf → Key outputs after deployment

README.md → Documentation and version history

Usage
Clone this repository

Run terraform init

Run terraform validate

Run terraform plan

Run terraform apply

Notes
State files (terraform.tfstate, .terraform/) are excluded via .gitignore.

Each commit represents a new version milestone (RG → VNet → Subnet → NSG → Public IP → VM → Automation).

Roadmap
Current: VM successfully deployed with Premium SSDs.

Next: Automation workflows, load balancers, and modularized Terraform structure.

Future: CI/CD integration and advanced monitoring.