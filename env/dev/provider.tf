terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.56.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-mahesh-11"
    storage_account_name = "maheshstg12"
    container_name       = "mahesh"
    key                  = "dev.tfstate"
  }
}
  


provider "azurerm" {
  features {}
  subscription_id = "acd9510d-7e29-433d-8504-d10d34dba654"
}