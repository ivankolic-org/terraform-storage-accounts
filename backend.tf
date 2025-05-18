terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tf-bootstrap"
    storage_account_name = "tfbsstorage"
    container_name       = "tfbscontainer"
    key                  = "terraform-storage-accounts.tfstate"
  }
}