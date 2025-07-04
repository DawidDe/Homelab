resource "proxmox_vm_qemu" "k0s-worker-node" {

    # General
    target_node = var.k0s-w_target_node
    vmid = var.k0s-w_vmid
    name = var.k0s-w_name
    onboot = var.k0s-w_onboot
    oncreate = var.k0s-w_oncreate

    # OS
    clone = var.k0s-w_clone
    clone_id = var.k0s-w_clone_id
    full_clone = var.k0s-w_full_clone

    # System
    agent = var.k0s-w_agent

    # CPU
    sockets = var.k0s-w_sockets
    cores = var.k0s-w_cores

    # Memory
    memory = var.k0s-w_memory

    # Network
    network {
        model = "virtio"
        bridge = "vmbr0"
    }
    ipconfig0 = "ip=dhcp"

    # Cloud-Init
    ci_wait = var.ci_wait
    ciuser = var.ciuser
    cipassword = var.cipassword
    ciupgrade = var.ciupgrade

}