resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location
}

resource "azurerm_container_registry" "testing" {
   name  =  var.acr_name
   resource_group_name = var.rg_name
   location  =  var.location
   sku =  "Standard"
   admin_enabled  = false
}
