variable "pm_api_url" {
    type = string
    sensitive = false
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
    sensitive = true
}