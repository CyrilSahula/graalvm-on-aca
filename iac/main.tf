# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
  backend "local" {
    path = "../../.terraform/graalvm-on-aca.tfstate"
  }
  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-graalvmonaca-sendbox"
  location = "westeurope"
}

resource "azurerm_container_registry" "acr" {
  name                = "crgraalvmonacawe"
  resource_group_name = "rg-graalvmonaca-sendbox"
  location            = "westeurope"
  sku                 = "Basic"
  admin_enabled       = true
}