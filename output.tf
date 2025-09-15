output "appServiceCertificate-object" {
    description = "The entire azurerm_app_service_certificate created"
    value = azurerm_app_service_certificate.cert
}

output "id" {
    description = "The id of the created app service_certificate"
    value = azurerm_app_service_certificate.cert.id
}

output "name" {
    description = "The name of the created app service_certificate"
    value = azurerm_app_service_certificate.cert.name
}