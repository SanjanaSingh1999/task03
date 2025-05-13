output "rg_id" {
  value       = azurerm_resource_group.this.id
  description = "The ID of the Azure Resource Group."
}

output "sa_blob_endpoint" {
  value       = azurerm_storage_account.this.primary_blob_endpoint
  description = "The primary blob service endpoint of the Azure Storage Account."
}

output "vnet_id" {
  value       = azurerm_virtual_network.this.id
  description = "The ID of the Azure Virtual Network."
}
