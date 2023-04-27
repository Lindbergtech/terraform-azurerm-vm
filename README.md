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