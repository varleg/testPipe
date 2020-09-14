provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "=2.27.0"
  features {}
}
resource "azurerm_resource_group" "main" {
  name     = "rg-tf-sandjohn-01"
  location = "West Europe"
}