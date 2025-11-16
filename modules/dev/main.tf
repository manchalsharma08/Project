# Resource Group
module "rg" {
  source   = "../child/rg"
  rg_name  = var.rg_name
  location = var.location
}

# Storage Account
module "storage" {
  source                = "../child/storage"
  rg_name               = module.rg.rg_name
  location              = var.location
  storage_account_name  = var.storage_name
}

# Azure Container Registry
module "acr" {
  source      = "../child/acr"
  rg_name     = module.rg.rg_name
  location    = var.location
  acr_name    = var.acr_name
  sku         = "Basic"
}

# AKS Cluster
module "aks" {
  source     = "../child/aks"
  rg_name    = module.rg.rg_name
  location   = var.location
  aks_name   = var.aks_name
  node_count = 1
  vm_size    = "Standard_B2s"
}
