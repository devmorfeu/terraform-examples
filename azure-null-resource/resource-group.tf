resource "azurerm_resource_group" "resource_group" {
  name     = "null-resource"
  location = var.location

  tags = local.common_tags
}

resource "null_resource" "provisioner" {
  provisioner "local-exec" {
    command = "echo Resouce group id: ${azurerm_resource_group.resource_group.id} >> resource_group.txt"
  }
}