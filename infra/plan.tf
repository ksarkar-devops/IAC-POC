resource "azurerm_app_service_plan" "plan" {
  name                = "funcapp-plan"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  kind                = "FunctionApp"
  reserved            = false  # false for Windows, true for Linux

  sku {
    tier = "Dynamic"
    size = "Y1"
  }
}
