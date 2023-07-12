variable "resource_group_name" {
  type        = string
  description = "The name of the resource group where the protected VM is located."
}

variable "recovery_vault_name" {
  type        = string
  description = "The name of the recovery vault where the backup will be stored."
}

variable "source_vm_id" {
  type        = string
  description = "The ID of the source VM that will be protected."
}

variable "backup_policy_id" {
  type        = string
  description = "The ID of the backup policy that will be applied to the protected VM."
}