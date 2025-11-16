resource "azurerm_storage_account" "storage" {
  for_each = var.st
  name                     = each.value.st_name
  resource_group_name      = each.value.rg_name
  location                 = each.value.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}


