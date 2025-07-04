###########
# General #
###########

variable "pm_api_url" {
    type = string
}
variable "pm_api_token_id" {
    type = string
    sensitive = true
}
variable "pm_api_token_secret" {
    type = string
    sensitive = true
}
variable "pm_tls_insecure" {
    type = bool
}

###################
# k0s-worker-node #
###################
# General
variable "k0s-w_target_node" {
    type = string
}
variable "k0s-w_vmid" {
    type = number
}
variable "k0s-w_name" {
    type = string
}
variable "k0s-w_onboot" {
    type = bool
}
variable "k0s-w_oncreate" {
    type = oncreate
}

# OS
variable "k0s-w_clone" {
    type = string
}
variable "k0s-w_clone_id" {
    type = number
}
variable "k0s-w_full_clone" {
    type = bool
}

# System
variable "k0s-w_agent" {
    type = number
}

# CPU
variable "k0s-w_sockets" {
    type = number
}
variable "k0s-w_cores" {
    type = number
}

# Memory
variable "k0s-w_memory" {
    type = number
}

####################
# k0s-control-node #
####################
# General
variable "k0s-c_target_node" {
    type = string
}
variable "k0s-c_vmid" {
    type = number
}
variable "k0s-c_name" {
    type = string
}
variable "k0s-c_onboot" {
    type = bool
}
variable "k0s-c_oncreate" {
    type = oncreate
}

# OS
variable "k0s-c_clone" {
    type = string
}
variable "k0s-c_clone_id" {
    type = number
}
variable "k0s-c_full_clone" {
    type = bool
}

# System
variable "k0s-c_agent" {
    type = number
}

# CPU
variable "k0s-c_sockets" {
    type = number
}
variable "k0s-c_cores" {
    type = number
}

# Memory
variable "k0s-c_memory" {
    type = number
}

#########
# wings #
#########
# General
variable "wings_target_node" {
    type = string
}
variable "wings_vmid" {
    type = number
}
variable "wings_name" {
    type = string
}
variable "wings_onboot" {
    type = bool
}
variable "wings_oncreate" {
    type = oncreate
}

# OS
variable "wings_clone" {
    type = string
}
variable "wings_clone_id" {
    type = number
}
variable "wings_full_clone" {
    type = bool
}

# System
variable "wings_agent" {
    type = number
}

# CPU
variable "wings_sockets" {
    type = number
}
variable "wings_cores" {
    type = number
}

# Memory
variable "wings_memory" {
    type = number
}

# homeassistant-os

# Cloud-Init
variable "ci_wait" {
    type = number
}
variable "ciuser" {
    type = string
}
variable "cipassword" {
    type = string
}
variable "ciupgrade" {
    type = bool
}