## Providers

| Name | Version |
|------|---------|
| azurerm | =2.0.0 |
| random | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| CLIENT\_ID | n/a | `any` | n/a | yes |
| CLIENT\_SECRET | n/a | `any` | n/a | yes |
| SUBSCRIPTION\_ID | n/a | `any` | n/a | yes |
| TENANT\_ID | n/a | `any` | n/a | yes |
| administrator\_login | Name of the admin user. | `string` | n/a | yes |
| administrator\_login\_password | Password of the admin user. | `string` | n/a | yes |
| auto\_grow | Enables or disables automatic growth . | `string` | n/a | yes |
| azure\_postgresql\_server\_name | The name of the PostgreSQL server. | `string` | n/a | yes |
| azurerm\_resource\_group\_location | The name of the location to use for the resource group. | `string` | n/a | yes |
| azurerm\_resource\_group\_name | The name of the resource group to create for the PostgreSQL server. | `string` | n/a | yes |
| backup\_retention\_days | The amount of days a backup will be kept. | `number` | n/a | yes |
| geo\_redundant\_backup | Enables or disables the geographical redundancy for backups. | `string` | n/a | yes |
| pg\_version | Version of PostgreSQL to use. | `number` | n/a | yes |
| sku\_name | Specifies the SKU Name for this PostgreSQL Server. The name of the SKU, follows the tier + family + cores pattern (e.g. B\_Gen4\_1, GP\_Gen5\_8). | `string` | n/a | yes |
| ssl\_enforcement | Enables or disables SSL enforcement. | `string` | n/a | yes |
| storage\_mb | The amount of mb to allocate in the profile. | `number` | n/a | yes |
| whitelist\_ips | List of ips to whitelist. | `string` | n/a | yes |

## Outputs

No output.

