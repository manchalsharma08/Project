variable "location" {
  description = "Azure region"
  default     = "eastus"
}

variable "rg_name" {
  default = "demo-rg"
}

variable "storage_name" {
  default = "demostorage123"
}

variable "acr_name" {
  default = "demoacr123"
}

variable "aks_name" {
  default = "demoaks"
}
