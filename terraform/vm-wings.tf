resource "proxmox_vm_qemu" "wings" {

    # General
    target_node = var.wings_target_node
    vmid = var.wings_vmid
    name = var.wings_name
    onboot = var.wings_onboot
    oncreate = var.wings_oncreate

    # OS
    clone = var.wings_clone
    clone_id = var.wings_clone_id
    full_clone = var.wings_full_clone

    # System
    agent = var.wings_agent

    # CPU
    sockets = var.wings_sockets
    cores = var.wings_cores

    # Memory
    memory = var.wings_memory

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