variable "rg_name" {
  description = "The name of the existing Azure Resource Group."
  type        = string
}

variable "location" {
  description = "The Azure region where resources will be created."
  type        = string
}

variable "storageaccount_name" {
  description = "The name of the Azure Storage Account."
  type        = string
}

variable "vnet_name" {
  description = "The name of the Azure Virtual Network."
  type        = string
}

variable "subnet1_name" {
  description = "The name of the first subnet (frontend) in the Virtual Network."
  type        = string
}

variable "subnet2_name" {
  description = "The name of the second subnet (backend) in the Virtual Network."
  type        = string
}

variable "creator_tag" {
  description = "The creator tag for all resources, typically the creator's email address."
  type        = string
}
