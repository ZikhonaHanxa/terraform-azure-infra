# 🌐 Azure Infrastructure with Terraform

This repository contains Infrastructure as Code (IaC) for provisioning resources in **Microsoft Azure** using Terraform.  
Each version milestone represents a new building block in the cloud environment.

---

## Version History
- **v1.0** → Resource Group created  
- **v1.1** → Virtual Network provisioned (`vnet_name`, `vnet_cidr` added)  
- **v1.2** → Subnet Deployment (`subnet_name`, `subnet_prefixes` added)  
- **v1.3** → Network Security Group created (`nsg_name`, rules, association with `subnet_name`)  
- **v1.4** → Public IP provisioned (`public_ip_name`, allocation method, SKU)  
- **v1.5** → Network Interface created with IP configuration parameters
- **v1.6** → Network Interface and Network Security Group associasted.
- **v1.7** → Up next is Storage account creation
- **v1.8** → Storage account created
- **v1.9** → SSH keys generated
- **v1.8** → Linux VM created



---

## Files
- `providers.tf` → Defines the AzureRM provider  
- `resource_group.tf` → Creates the Resource Group  
- `vnet.tf` → Creates the Virtual Network  
- `subnet.tf` → Subnet configuration (`subnet_name`, `subnet_prefixes`)  
- `security_group.tf` → Defines the Network Security Group (`nsg_name`, rules)  
- `nsg_association.tf` → Associates NSG with `subnet_name`  
- `public_ip.tf` → Creates a Public IP resource  
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
- Each commit represents a new version milestone (RG → VNet → Subnet → NSG → Public IP → VM → Automation)  

---

## Roadmap
- **Current**: Subnet + Security Group + Public IP deployed.  
- **Next**: NICs and VM provisioning inside the subnet.  
- **Future**: Automation workflows, load balancers, and modularized Terraform structure.
