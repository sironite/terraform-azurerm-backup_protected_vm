output "backup_protected_vm_id" {
  description = "The ID of the Azure Backup Protected VM resource."
  value       = azurerm_backup_protected_vm.this.id
}