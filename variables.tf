variable "rg_name" {
  description = "The name of the Resource Group"
  type        = string
  default     = "rg-vm-t-weu-001"
}

variable "location" {
  description = "The location of the resources"
  type        = string
  default     = "West Europe"
}

variable "vnet_name" {
  description = "The name of the Virtual Network"
  type        = string
  default     = "vnet-vm-t-weu-001"
}

variable "vnet_prefix" {
  description = "The address space of the Virtual Network"
  type        = string
  default     = "10.0.0.0/22"
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
  default     = "default"
}

variable "subnet_prefix" {
  description = "The prefix of the subnet inside the Virtual Network"
  type        = string
  default     = "10.0.0.0/24"
}

variable "vm_name" {
  description = "The name of the Virtual Machine"
  type        = string
  default     = "vm-test-weu-001"
}

variable "vm_size" {
  description = "The size of the Virtual Machine"
  type        = string
  default     = "Standard_B2s"
}

variable "username" {
  description = "The username of the administrator account"
  type        = string
  default     = "admin001"
}

variable "password" {
  description = "The password of the administrator account"
  type        = string
  sensitive   = true
}

variable "source_image_reference_var" {
  description = "Settings for the source image in Azure for the Virtual Machine"
  type = object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  })
  default = {
    offer     = "WindowsServer"
    publisher = "MicrosoftWindowsServer"
    sku       = "2022-datacenter-azure-edition"
    version   = "latest"
  }
}

variable "nsg_name" {
  description = "The name of the Network Security Group"
  type        = string
  default     = "nsg-test-weu-001"
}
