resource "azurerm_log_analytics_workspace" "workspace" {
  name                = var.service_settings.name
  location            = var.context.location
  resource_group_name = var.context.resource_group_name
  sku                 = "PerGB2018"
  retention_in_days   = var.service_settings.retention_in_days

  tags = {
    app = var.context.application_name
    env = var.context.environment_name
  }
}
