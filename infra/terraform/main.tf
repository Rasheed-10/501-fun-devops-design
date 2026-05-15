resource "azurerm_resource_group" "main" {
  name     = "rg-${var.project_name}-${var.environment}"
  location = var.location
}

module "networking" {
  source              = "./modules/networking"
  project_name        = var.project_name
  environment         = var.environment
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
}

module "security" {
  source              = "./modules/security"
  project_name        = var.project_name
  environment         = var.environment
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
}

module "eventing" {
  source              = "./modules/eventing"
  project_name        = var.project_name
  environment         = var.environment
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
}

module "storage" {
  source              = "./modules/storage"
  project_name        = var.project_name
  environment         = var.environment
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
}

module "monitoring" {
  source              = "./modules/monitoring"
  project_name        = var.project_name
  environment         = var.environment
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
}

module "container_apps" {
  source              = "./modules/container-apps"
  project_name        = var.project_name
  environment         = var.environment
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name

  log_analytics_workspace_id = module.monitoring.log_analytics_workspace_id
}