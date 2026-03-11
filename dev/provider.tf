terraform {
  required_version = ">=1.5.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "frontrg123"
    storage_account_name = "vmstorage1707"
    container_name       = "vminerconta"
    key                  = "test.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "80217434-ec3b-4237-9fd0-656182852097"
}
