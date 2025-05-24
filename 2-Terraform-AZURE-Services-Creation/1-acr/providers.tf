terraform {
  required_version = ">= 1.11"
  backend "azurerm" {
    resource_group_name  = "TerraformRG"
    storage_account_name = "terraformstorm"
    container_name       = "tfstate"
    key                  = "acr-terraform.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.27.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "4a52e305-b92a-4236-b843-414e2e62b2e4"

}
