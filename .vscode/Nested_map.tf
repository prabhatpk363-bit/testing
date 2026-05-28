resource "azurerm_resource_group" "pk123"{
name = "PK_RG1"
Location ="westus"   
}

resource "azurerm_stotrage_account" "strg112" {
depends_on = [ azurerm_resource_group.pk123 ]
for_each = var.storage_account2
name =each.key
location =each.value.location
resource_group_name=each.value.resource_group_name
account_tier =each.value.account_tier
account_tier_type =each.value.ccount_tier_type
}