<!-- BEGIN_TF_DOCS -->
 # Azure Backup for an Azure VM
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/backup_protected_vm.html) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/backup_protected_vm.html)

# Usage - Module

## Azure Backup for an Azure VM

```hcl
module "backup_protected_vm" {
  source  = "sironite/backup_protected_vm/azurerm"
  version = "x.x.x"

  resource_group_name = "rg"
  recovery_vault_name = "vault"
  source_vm_id        = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.Compute/virtualMachines/vm"
  backup_policy_id    = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.RecoveryServices/vaults/vault/policies/DefaultPolicy"

}

```

## Providers

| Name | Version |
|------|---------|
| azurerm | >= 2.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_backup_protected_vm.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/backup_protected_vm) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| backup\_policy\_id | The ID of the backup policy that will be applied to the protected VM. | `string` | yes |
| recovery\_vault\_name | The name of the recovery vault where the backup will be stored. | `string` | yes |
| resource\_group\_name | The name of the resource group where the protected VM is located. | `string` | yes |
| source\_vm\_id | The ID of the source VM that will be protected. | `string` | yes |

## Outputs

| Name | Description |
|------|-------------|
| backup\_protected\_vm\_id | The ID of the Azure Backup Protected VM resource. |

## Related documentation
<!-- END_TF_DOCS -->