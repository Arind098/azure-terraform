provider "azurerm" {
  version = "=2.0.0"
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "MyAzureTest"
    storage_account_name = "myterraformtest" #must be globally unique
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
