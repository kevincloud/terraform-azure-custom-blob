resource "random_id" "randomId" {
    keepers = {
        # Generate a new ID only when a new resource group is defined
        resource_group = var.res_group_name
    }

    byte_length = 8
}

resource "azurerm_storage_account" "blob-store" {
    name                        = "diag${random_id.randomId.hex}"
    resource_group_name         = var.res_group_name
    location                    = var.location
    account_replication_type    = "LRS"
    account_tier                = "Standard"

    tags = {
        environment = "Dev"
        Key = "DoNotDelete"
    }
}
