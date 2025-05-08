variable "rg_name" {
  description = "Name of the existing resource group"
  type        = string
}

variable "student_email" {
  description = "Creator tag email"
  type        = string
}

variable "storageaccount_name" {
  description = "Name of the storage account"
  type        = string
}

variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
}

variable "subnet1_name" {
  description = "Name of the first subnet"
  type        = string
}

variable "subnet2_name" {
  description = "Name of the second subnet"
  type        = string
}
