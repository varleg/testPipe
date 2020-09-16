terraform {
  backend "azurerm" {
    key = "terraform.tfstate"
  }
  required_providers {
    provider "azurerm" {
      version = "=2.27.0"
      features {}
      }
  }
}
resource "azurerm_resource_group" "main" {
  name     = "rg-tf-sandjohn-01"
  location = "westeurope"
}