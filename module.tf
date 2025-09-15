data "azurerm_key_vault_certificate" "kv_cert" {
    count = try(var.appServiceCertificate.certificate_name, null) != null ? 1 : 0

    name = var.appServiceCertificate.certificate_name
    key_vault_id = var.keyVault.id
}

resource "azurerm_app_service_certificate" "cert" {
  name                = local.name
  resource_group_name = local.resource_group_name
  location            = var.location
 
  key_vault_secret_id = length(data.azurerm_key_vault_certificate.kv_cert) == 1 ? data.azurerm_key_vault_certificate.kv_cert[0].secret_id : null

  # This is not required as we assume the keyvault is in the same subscription as this resource group.
  # Supporting this would require an aliased provider for the lookup, which seems to exceed the scope of this module
  #key_vault_id = length(data.azurerm_key_vault_certificate.kv_cert) == 1 ? var.keyVault.id : null

  tags = merge(var.tags, try(var.appServiceCertificate.tags, {}))
}
