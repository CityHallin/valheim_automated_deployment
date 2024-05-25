terraform {

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.100.0"
    }
    azuread = {
      source = "hashicorp/azuread"
      version = ">=2.50.0"
    }
  }

  backend "azurerm" {
    key = "terraform.tfstate"
    use_oidc = true
  }
}
provider "azurerm" {
  use_oidc = true
  skip_provider_registration = true
  features {}
}

provider "azuread" {
}