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
