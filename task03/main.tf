# Import existing resource group
data "azurerm_resource_group" "existing" {
  name = var.rg_name
}

# Update existing RG with tag
resource "azurerm_resource_group" "this" {
  name     = data.azurerm_resource_group.existing.name
  location = data.azurerm_resource_group.existing.location

  tags = {
    Creator = var.creator_tag
  }
}

# Storage account
resource "azurerm_storage_account" "this" {
  name                     = var.storageaccount_name
  resource_group_name      = azurerm_resource_group.this.name
  location                 = azurerm_resource_group.this.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    Creator = var.creator_tag
  }
}

# Virtual network
resource "azurerm_virtual_network" "this" {
  name                = var.vnet_name
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name

  tags = {
    Creator = var.creator_tag
  }
}

# Subnet 1 - frontend
resource "azurerm_subnet" "frontend" {
  name                 = var.subnet1_name
  resource_group_name  = azurerm_resource_group.this.name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = ["10.0.1.0/24"]
}

# Subnet 2 - backend
resource "azurerm_subnet" "backend" {
  name                 = var.subnet2_name
  resource_group_name  = azurerm_resource_group.this.name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = ["10.0.2.0/24"]
}
