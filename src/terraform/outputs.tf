output "k0s_control_node_ip" {
  value = proxmox_vm_qemu.k0s_control.network_interface.0.ip_address
}

output "k0s_worker_node_ip" {
  value = proxmox_vm_qemu.k0s_worker.network_interface.0.ip_address
}

output "wings_ip" {
  value = proxmox_vm_qemu.wings.network_interface.0.ip_address
}