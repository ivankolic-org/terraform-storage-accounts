variable resource_group_name {
    default = "rg-tf-hylastix"
}

variable storage_account_name {
    default = "tfhylastix"
}

variable location {
    default = "westeurope"
}
variable "ARM_CLIENT_ID" {
  description = "Azure Client ID"
  type        = string
  # No default; set via TF_VAR_ARM_CLIENT_ID environment variable or tfvars file
}