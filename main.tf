resource "azurerm_resource_group" "terraform-storage-accounts" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "terraform-storage-accounts" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.terraform-storage-accounts.name
  location                 = azurerm_resource_group.terraform-storage-accounts.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "terraform-storage-accounts" {
  name                  = "terraform-state"
  storage_account_name  = azurerm_storage_account.terraform-storage-accounts.name
  container_access_type = "private"
}

resource "azurerm_role_assignment" "sp_tfstate_blob_access" {
  principal_id         = data.azuread_service_principal.terraform.object_id
  role_definition_name = "Storage Blob Data Contributor"
  scope                = azurerm_storage_account.terraform-storage-accounts.id
}