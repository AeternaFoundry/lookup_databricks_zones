output "zones_lookup_id" {
  description = "Map of id values across all zones_lookup, keyed the same as var.zones_lookup except keys with no id are omitted"
  value       = { for k, v in data.databricks_zones.zones_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "zones_lookup_default_zone" {
  description = "Map of default_zone values across all zones_lookup, keyed the same as var.zones_lookup except keys with no default_zone are omitted"
  value       = { for k, v in data.databricks_zones.zones_lookup : k => v.default_zone if v.default_zone != null && length(v.default_zone) > 0 }
}
output "zones_lookup_provider_config" {
  description = "Map of provider_config values across all zones_lookup, keyed the same as var.zones_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_zones.zones_lookup : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "zones_lookup_zones" {
  description = "Map of zones values across all zones_lookup, keyed the same as var.zones_lookup except keys with no zones are omitted"
  value       = { for k, v in data.databricks_zones.zones_lookup : k => v.zones if v.zones != null && length(v.zones) > 0 }
}

