resource "azurerm_eventhub_namespace" "main" {
  name                = "evhns-${var.project_name}-${var.environment}"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "Standard"
  capacity            = 2
}

resource "azurerm_eventhub" "device_logs" {
  name                = "device-logs"
  namespace_name      = azurerm_eventhub_namespace.main.name
  resource_group_name = var.resource_group_name
  partition_count     = 4
  message_retention   = 7
}

resource "azurerm_servicebus_namespace" "main" {
  name                = "sb-${var.project_name}-${var.environment}"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "Standard"
}

resource "azurerm_servicebus_queue" "device_commands" {
  name         = "device-commands"
  namespace_id = azurerm_servicebus_namespace.main.id

  dead_lettering_on_message_expiration = true
  max_delivery_count                   = 10
}