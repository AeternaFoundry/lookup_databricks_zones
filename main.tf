data "databricks_zones" "zones_lookup" {
  for_each = var.zones_lookup

  default_zone = each.value.default_zone
  zones        = each.value.zones

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

