locals {
  resource_group_name = strcontains(var.appServiceCertificate.resource_group, "/resourceGroups/") ? regex("[^\\/]+$", var.appServiceCertificate.resource_group) : var.resource_groups[var.appServiceCertificate.resource_group].name

  name = try(var.appServiceCertificate.certificate_name, "${var.env}-${var.group}-${var.project}-${var.userDefinedString}-asc", null)
}