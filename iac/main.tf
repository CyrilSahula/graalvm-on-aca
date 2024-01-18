# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.87.0"
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

resource "azurerm_resource_group" "graalvmonaca_rg" {
  name     = "rg-graalvmonaca-sendbox"
  location = "westeurope"
}

resource "azurerm_container_app_environment" "graalvmonaca_cae" {
  name      = "cae-graalvmonaca-we"
  location  = "westeurope"
  resource_group_name = azurerm_resource_group.graalvmonaca_rg.name
}

resource "azurerm_container_app" "graalvmonaca_ca" {
  name                         = "ca-graalvmonaca-we"
  container_app_environment_id = azurerm_container_app_environment.graalvmonaca_cae.id
  resource_group_name          = azurerm_resource_group.graalvmonaca_rg.name
  revision_mode                = "Single"

  template {
    container {
      name   = "graalvmonaca"
      image  = "cyrilsahula2/graalvm-on-aca:8"
      cpu    = 0.25
      memory = "0.5Gi"
    }
  }
}