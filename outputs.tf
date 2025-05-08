output "rg_id" {
  value = azurerm_resource_group.this.id
}

output "sa_blob_endpoint" {
  value = azurerm_storage_account.this.primary_blob_endpoint
}

output "vnet_id" {
  value = azurerm_virtual_network.this.id
}
