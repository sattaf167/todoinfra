terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
  backend "azurerm" {
  resource_group_name  = "frontrg123"
  storage_account_name = "vmstorage00710"
  container_name       = "vminerconta"
  key                  = "pak.terraform.tfstate"
}
}

provider "azurerm" {
  features {}
  subscription_id = "bd6e61a5-d2a5-4a90-95dd-c977f616c3b7"
}