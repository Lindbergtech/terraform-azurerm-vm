terraform {
  required_providers {
    name = {
      source = "hashicorp/azurerm"
      version = "~> 3.52.0"
     }
  }
}

provider "azurerm" {
  features {}
}