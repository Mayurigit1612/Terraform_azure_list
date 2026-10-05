terraform {
    required_providers {
        azurerm ={
            source = "hashicorp/azurerm"
            version = "~>4.0"
        }
    }
}

provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "rg"{
    count = length(var.location)
    name = "rg-${var.location[count.index]}"
    location = var.location[count.index]
}