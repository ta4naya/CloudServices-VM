# Defines the versions of providers (plugins) to be used.
terraform {
  required_version = "1.3.6"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.45.0"
    }
  }
}