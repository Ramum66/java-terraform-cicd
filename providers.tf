terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.9.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "multicloudbatch2-rg1"
    storage_account_name = "dvsterraformstatefilesa"
    container_name       = "remotestatefile"
    key                  = "terraform.tfstate"
  }

}

provider "azurerm" {
  # Configuration options
  features {}

}