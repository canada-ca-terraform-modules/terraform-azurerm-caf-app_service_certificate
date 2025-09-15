<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_app_service_certificate.cert](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/app_service_certificate) | resource |
| [azurerm_key_vault_certificate.kv_cert](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault_certificate) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_appServiceCertificate"></a> [appServiceCertificate](#input\_appServiceCertificate) | Object containing the parameters for the certificate | `any` | n/a | yes |
| <a name="input_env"></a> [env](#input\_env) | (Required) Env value for the name of the resource | `string` | n/a | yes |
| <a name="input_group"></a> [group](#input\_group) | (Required) Group value for the name of the resource | `string` | n/a | yes |
| <a name="input_keyVault"></a> [keyVault](#input\_keyVault) | (optional) The keyvault that contains the certificate if using that option | `any` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | Azure location for the resource | `string` | `"canadacentral"` | no |
| <a name="input_project"></a> [project](#input\_project) | (Required) Project value for the name of the resource | `string` | n/a | yes |
| <a name="input_resource_groups"></a> [resource\_groups](#input\_resource\_groups) | Resouce group object containing a list of resource group in the target project | `any` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Maps of tags that will be applied to the resource | `map(string)` | `{}` | no |
| <a name="input_userDefinedString"></a> [userDefinedString](#input\_userDefinedString) | (Required) UserDefinedString value for the name of the resource | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_appServiceCertificate-object"></a> [appServiceCertificate-object](#output\_appServiceCertificate-object) | The entire azurerm\_app\_service\_certificate created |
| <a name="output_id"></a> [id](#output\_id) | The id of the created app service\_certificate |
| <a name="output_name"></a> [name](#output\_name) | The name of the created app service\_certificate |
<!-- END_TF_DOCS -->