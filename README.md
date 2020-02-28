## Providers

| Name | Version |
|------|---------|
| azurerm | >= 2.0.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| administrator\_login | Name of the admin user. | `string` | n/a | yes |
| administrator\_login\_password | Password of the admin user. | `string` | n/a | yes |
| auto\_grow | Enables or disables automatic growth . | `string` | n/a | yes |
| azure\_postgresql\_server\_name | The name of the PostgreSQL server. | `string` | n/a | yes |
| azurerm\_resource\_group\_location | The name of the location to use for the resource group. | `string` | n/a | yes |
| azurerm\_resource\_group\_name | The name of the resource group to create for the PostgreSQL server. | `string` | n/a | yes |
| backup\_retention\_days | The amount of days a backup will be kept. | `number` | n/a | yes |
| geo\_redundant\_backup | Enables or disables the geographical redundancy for backups. | `string` | n/a | yes |
| pg\_version | Version of PostgreSQL to use. | `number` | n/a | yes |
| sku\_name | The name of the resource group to create for the PostgreSQL server. | `string` | n/a | yes |
| ssl\_enforcement | Enables or disables SSL enforcement. | `string` | n/a | yes |
| storage\_mb | The amount of mb to allocate in the profile. | `number` | n/a | yes |

## Outputs

No output.

