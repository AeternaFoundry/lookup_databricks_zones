variable "zones_lookup" {
  description = <<EOT
Map of zones_lookup, attributes below
Optional:
    - default_zone
    - zones
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    default_zone = optional(string)
    zones        = optional(list(string))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

