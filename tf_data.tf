data "azurerm_resource_group" "rg" {
  for_each = var.resourcegroup

  name = each.value
}

data "azurerm_virtual_network" "vnet" {
  for_each = var.vm_instances

  name                = each.value.vnet_name
  resource_group_name = each.value.vnet_resourcegroup
}

data "azurerm_subnet" "subnet" {
  for_each = var.vm_instances

  name                 = each.value.subnet_name
  resource_group_name  = each.value.vnet_resourcegroup
  virtual_network_name = data.azurerm_virtual_network.vnet[each.key].name

}
