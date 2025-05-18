output "resource_group_name" {
  value       = azurerm_resource_group.terraform-storage-accounts.name
  description = "The name of the resource group used for Terraform backend"
}

output "storage_account_name" {
  value       = azurerm_storage_account.terraform-storage-accounts.name
  description = "The name of the Azure storage account"
}

output "container_name" {
  value       = azurerm_storage_container.terraform-storage-accounts.name
  description = "The name of the blob container for tfstate files"
}
