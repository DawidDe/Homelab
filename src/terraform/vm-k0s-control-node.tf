resource "proxmox_vm_qemu" "k0s-control-node" {

    # General
    target_node = var.k0s_c_target_node
    vmid = var.k0s_c_vmid
    name = var.k0s_c_name
    onboot = var.k0s_c_onboot
    oncreate = var.k0s_c_oncreate

    # OS
    clone = var.k0s_c_clone
    clone_id = var.k0s_c_clone_id
    full_clone = var.k0s_c_full_clone

    # System
    agent = var.k0s_c_agent

    # CPU
    sockets = var.k0s_c_sockets
    cores = var.k0s_c_cores

    # Memory
    memory = var.k0s_c_memory

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