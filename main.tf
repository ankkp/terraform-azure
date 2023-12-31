# Terraform
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.40.0"
    }
  }
}

#Azure provider
provider "azurerm" {
  features {}
}

#Create Storage Account
module "storage_account" {
  source    = "./modules/storage-account"

  saname    = "<SANAME>"
  rgname    = "<RGNAME>"
  location  = "<LOCATION>"
}

#Create Storage Account
module "storage_account2" {
  source    = "./modules/storage-account"

  saname    = "<SANAME>"
  rgname    = "<RGNAME>"
  location  = "<LOCATION>"
}
