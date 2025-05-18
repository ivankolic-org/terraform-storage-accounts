data "azuread_service_principal" "terraform" {
  client_id = var.ARM_CLIENT_ID  
}