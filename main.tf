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
  subscription_id            = "9734ed68-621d-47ed-babd-269110dbacb1"
  skip_provider_registration = true
}

resource "azurerm_resource_group" "rg" {
  name     = "813-08022121-hands-on-with-terraform-on-azure"
  location = "westus"
}

module "securestorage" {
  source               = "app.terraform.io/clynch-pluralsight-lab/securestorage2/azurerm"
  version              = "1.0.0"
  location             = azurerm_resource_group.rg.location
  resource_group_name  = azurerm_resource_group.rg.name
  storage_account_name = "tsstx124handonwithtfaz"
}