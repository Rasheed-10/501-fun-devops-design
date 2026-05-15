terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.100"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-tfstate-501fun"
    storage_account_name = "st501funtfstate"
    container_name       = "tfstate"
    key                  = "501fun-dev.tfstate"
  }
}

provider "azurerm" {
  features {}
}