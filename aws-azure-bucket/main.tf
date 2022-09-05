terraform {
  required_version = ">= 1.0.0"

  required_providers = {
    aws = {
        source = "hashicorp/aws"
        version = "4.12.1"
    }
    azurerm = {
        source  = "hashicorp/azurerm"
        version = "2.94.0"
    }
  }
}

provider "aws" {
    region = "eu-central-1"

    default_tags {
      tags = {
        owner = "ganogsi"
        managed-by = "terraform"
      }
    }
  
}

provider "azurerm" {
  features {}
}