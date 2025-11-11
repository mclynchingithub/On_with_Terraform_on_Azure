terraform {
  cloud {
    organization = "clynch-pluralsight-lab"
    workspaces {
      name = "Hands-On_With_Terraform_On_Azure"
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}

resource "azurerm_resource_group" "rg" {
  name     = "newRG"
  location = "westus"
}

module "securestorage" {
  source               = "app.terraform.io/clynch-pluralsight-lab/securestorage2/azurerm"
  version              = "v1.0.0"
  location             = azurerm_resource_group.rg.location
  resource_group_name  = azurerm_resource_group.rg.name
  storage_account_name = "tsstx123handonwithtfaz"
}