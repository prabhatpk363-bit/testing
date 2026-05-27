terraform {
required_providers {
azurerm = {
source ="azurerm/hashicorp"
version ="4.74.0"
}
}
}

provider "azurerm" {
features {}
}