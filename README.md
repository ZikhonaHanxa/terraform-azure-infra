# 🌐 Azure Infrastructure with Terraform

This repository contains Infrastructure as Code (IaC) for provisioning resources in **Microsoft Azure** using Terraform.  
Each version milestone represents a new building block in the cloud environment.

---

##  Version History
- **v1.0** → Resource Group created  
- **v1.1** → Virtual Network provisioned (`vnet_name`, `vnet_cidr` added)  
- **v1.2** → Subnet Deployment (`subnet_name`, `subnet_prefixes` added)  
-  Planned v1.3** → Security Group creation (`nsg_name`, rules, association with `subnet_name`)


---

## Files
- `providers.tf` → Defines the AzureRM provider  
- `resource_group.tf` → Creates the Resource Group  
- `vnet.tf` → Creates the Virtual Network  
- `subnet.tf` → Subnet configuration (`subnet_name`, `subnet_prefixes`)  
- `nsg.tf` → (planned v1.3) Security Group definition (`nsg_name`, rules)  
- `nsg_association.tf` → (planned v1.3) Associates NSG with `subnet_name`  
- `virtual_machine.tf` → (future) VM configuration  
- `variables.tf` → Input variables for flexibility  
- `outputs.tf` → Key outputs after deployment  
- `README.md` → Documentation and version history  

---

## Usage
1. Clone this repository  
2. Run `terraform init`  
3. Run `terraform validate`  
4. Run `terraform plan`  
5. Run `terraform apply`  

---

## Notes
- State files (`terraform.tfstate`, `.terraform/`) are excluded via `.gitignore`  
- Each commit represents a new version milestone (RG → VNet → Subnet → NSG → VM → Automation)  

---

## Roadmap
- **Current**: Virtual Network deployed with configurable name and CIDR block.  
- **Next**: Subnet creation inside the VNet to host resources such as VMs.  
- **Planned v1.3**: Security Group creation and association with the Subnet.  
- **Future**: NICs, VM provisioning, and automation workflows.
