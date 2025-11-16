# Resource Group
module "rgm" {
  source   = "../child/Resource_group"
  rg = var.rg_map
}

# Storage Account
module "storage" {
  source   = "../../child/storage_account"
  st = var.st_new
  
}

# Azure Container Registry
module "acr" {
  source      = "../../child/ACR"
  acr = var.acr_new
}

# AKS Cluster
module "aks" {
  source     = "../../child/AKS"
  aks = var.aks_new
}
