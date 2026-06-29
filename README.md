# Terraform Resource Group Project

This repository contains Infrastructure as Code (IaC) for provisioning resources in **Microsoft Azure** using Terraform.

## Current Version
- **v1.0** → Resource Group created  
- **Upcoming v2.0** → Virtual Network Deployment 

## Files
- `providers.tf` → Defines the AzureRM provider  
- `resource_group.tf` → Creates the Resource Group  
- `virtual_machine.tf` → (to be added) VM configuration  
- `variables.tf` → Input variables for flexibility  
- `outputs.tf` → Key outputs after deployment  

## Usage
1. Clone this repository  
2. Run `terraform init`  
3. Run `terraform plan`  
4. Run `terraform apply`  

## Notes
- State files (`terraform.tfstate`, `.terraform/`) are excluded via `.gitignore`  
- Each commit represents a new version milestone (RG → VM → Networking → Automation)  
