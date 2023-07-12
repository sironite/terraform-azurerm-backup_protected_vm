module "backup_protected_vm" {
  source  = "sironite/backup_protected_vm/azurerm"
  version = "x.x.x"

  resource_group_name = "rg"
  recovery_vault_name = "vault"
  source_vm_id        = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.Compute/virtualMachines/vm"
  backup_policy_id    = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.RecoveryServices/vaults/vault/policies/DefaultPolicy"

}

