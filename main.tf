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
  subscription_id = "28e1e42a-4438-4c30-9a5f-7d7b488fd883"
  skip_provider_registration = true
}

resource "azurerm_resource_group" "rg" {
  name     = "813-15ef01b4-hands-on-with-terraform-on-azure"
  location = "westus"
}

module "securestorage" {
  source               = "app.terraform.io/clynch-pluralsight-lab/securestorage2/azurerm"
  version              = "1.0.0"
  location             = azurerm_resource_group.rg.location
  resource_group_name  = azurerm_resource_group.rg.name
  storage_account_name = "tsstx123handonwithtfaz"
}