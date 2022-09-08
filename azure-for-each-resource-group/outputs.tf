output "location-resource-group-eua" {
  value = azurerm-resource_group.resource_group["EUA"].location
}

output "location-resource-group-europa" {
  value = azurerm-resource_group.resource_group["Europa"].location
}

output "location-resource-group-asia" {
  value = azurerm-resource_group.resource_group["Asia"].location
}