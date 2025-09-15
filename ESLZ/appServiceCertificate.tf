variable "appServiceCertificate" {
    default = {}
}

module "appServiceCertificate" {
  source = "github.com/canada-ca-terraform-modules/terraform-azurerm-caf-app_service_certificate?ref=v1.0.0"

  for_each = var.appServiceCertificate

  appServiceCertificate = each.value

  userDefinedString = each.key
  env = var.env
  group = var.group
  project = var.project
  resource_groups = local.resource_groups_all
  keyVault = local.Project-kv 
  tags = var.tags
}