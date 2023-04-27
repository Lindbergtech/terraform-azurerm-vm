## Deploy a virtual machine in Azure

This Terraform module allowed you to deploy an Azure Virtual machine where you can open for your public IP so you can RDP into the machine. This is a part of my series practiving writing Terraform Modules. 

## Usage

```HCL
terraform {}

provider "azurerm" {
  features {}
}

module "azurevm" {
  source  = "carlzxc71/azurevm/azurerm"
  version = "1.0.0"

  rg_name  = "rg-name"
  location = "location"

  vnet_name     = "vnet-name"
  vnet_prefix   = "10.0.0.0/22"
  subnet_name   = "snet-name"
  subnet_prefix = "10.0.0.0/24"

  vm_name  = "vm-name"
  vm_size  = "Standard_B2s"
  username = "username"

  source_image_reference_var = {
    publisher = "MicrososftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2022-datacenter-azure-edition"
    version   = "latest"
  }

  nsg_name       = "nsg-name"
  your_public_ip = "0.0.0.0/32"
}
``` 

## Requirements

| Name                                                                      | Version       |
|---------------------------------------------------------------------------|---------------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3        |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm)       | >= 3.50 |

## Providers

| Name                                                          | Version       |
|---------------------------------------------------------------|---------------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.50 |