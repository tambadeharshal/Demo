terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.37.0"
    }
 }
}

provider "azurerm" {
  #configuration item
  features {}
    subscription_id = "f8ca0b3d-8889-4509-b3e2-211b99455807"
    tenant_id = "82820a90-8489-46dc-92a7-a4ee08f4b492"
    client_id = "1bfb68c0-46d7-4409-9608-4ee0e23f06c9"
    client_secret = "QF_8Q~clX3~xU-mBo7Y_xLUi6x~iLQB-cCVzmdnA"
        
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_storage_account" "example" {
  name                     = "examplestr"
  resource_group_name      = "example-resources"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "RAGRS"
}
