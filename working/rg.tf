terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "neptune-software"
    workspaces {
      name = "testPipe"
    }
  }
}
provider "azurerm" {
  version         = "=2.27.0"
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  features {}
}
resource "azurerm_resource_group" "main" {
  name     = "rg-tf-sandjhn-02"
  location = "westeurope"
}
