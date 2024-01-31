terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    storage_account_name = "netflixprojt"
    container_name       = "tflock"
    key                  = "terraform.tfstate"
    resource_group_name = "DefaultResourceGroup-EUS"
  }
}