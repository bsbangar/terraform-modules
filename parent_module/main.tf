module "rg" {
  source = "../child_module/azurerm_resource_group"
  rgs    = var.rgs
}

module "virtual_network" {
  depends_on = [module.rg]
  source     = "../child_module/azurerm_virtual_network"
  vnets      = var.vnets
}

module "subnet" {
  depends_on = [module.virtual_network]
  source     = "../child_module/azurerm_subnet"
  snets      = var.snets
}
