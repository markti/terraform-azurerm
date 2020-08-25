  
variable "context" {
  type = object({

    application_name = string
    environment_name = string
    resource_group_name = string
    location = string
    location_suffix = string

  })
}

variable "service_settings" {
  type = object({

    name                = string
    soft_delete_enabled = bool
    log_storage_account = string 

  })
}
variable monitor_settings {
  type = object({

    workspace_id        = string
    storage_account     = string 
    retention_days      = number

  })

}