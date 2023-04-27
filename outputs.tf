output "vm_public_ip" {
  description = "Output the public IP of the virtual machine"
  value       = azurerm_windows_virtual_machine.this.public_ip_address
}
