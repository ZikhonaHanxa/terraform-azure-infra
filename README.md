# 🌐 Azure Infrastructure with Terraform

This repository contains Infrastructure as Code (IaC) for provisioning resources in **Microsoft Azure** using Terraform.  
Each version milestone represents a new building block in the cloud environment.

---

##  Version History
- **v1.0** → Resource Group created  
- **v1.1** → Virtual Network provisioned (`vnet_name`, `vnet_cidr` added)  
- **Upcoming v1.2** → Subnet Deployment (`subnet_name`, `subnet_cidr`)  

---

## Files
- `providers.tf` → Defines the AzureRM provider  
- `resource_group.tf` → Creates the Resource Group  
- `vnet.tf` → Creates the Virtual Network  
- `subnet.tf` → (to be added) Subnet configuration  
- `virtual_machine.tf` → (future) VM configuration  
- `variables.tf` → Input variables for flexibility  
- `outputs.tf` → Key outputs after deployment  

---

##  Usage
1. Clone this repository  
2. Run `terraform init`  
3. Run `terraform validate`  
4. Run `terraform plan`  
5. Run `terraform apply`  

---

##  Notes
- State files (`terraform.tfstate`, `.terraform/`) are excluded via `.gitignore`  
- Each commit represents a new version milestone (RG → VNet → Subnet → VM → Automation)  

---

##  Roadmap
- **Current**: Virtual Network deployed with configurable name and CIDR block.  
- **Next**: Subnet creation inside the VNet to host resources such as VMs.  
- **Future**: NICs, VM provisioning, and automation workflows.

