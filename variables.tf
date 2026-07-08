variable "mongo_clusters" {
  description = <<EOT
Map of mongo_clusters, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - administrator_password
    - administrator_username
    - authentication_methods
    - compute_tier
    - create_mode
    - data_api_mode_enabled
    - high_availability_mode
    - preview_features
    - public_network_access
    - shard_count
    - source_location
    - source_server_id
    - storage_size_in_gb
    - storage_type
    - tags
    - version
    - customer_managed_key (block)
    - identity (block)
    - restore (block)
Nested mongo_cluster_firewall_rules (azurerm_mongo_cluster_firewall_rule):
    Required:
        - end_ip_address
        - name
        - start_ip_address
Nested mongo_cluster_users (azurerm_mongo_cluster_user):
    Required:
        - identity_provider_type
        - object_id
        - principal_type
        - role (block)
EOT

  type = map(object({
    location               = string
    name                   = string
    resource_group_name    = string
    storage_type           = optional(string) # Default: "PremiumSSD"
    storage_size_in_gb     = optional(number)
    source_server_id       = optional(string)
    source_location        = optional(string)
    shard_count            = optional(number)
    public_network_access  = optional(string) # Default: "Enabled"
    preview_features       = optional(list(string))
    high_availability_mode = optional(string)
    data_api_mode_enabled  = optional(bool)   # Default: false
    create_mode            = optional(string) # Default: "Default"
    compute_tier           = optional(string)
    authentication_methods = optional(set(string))
    administrator_username = optional(string)
    administrator_password = optional(string)
    tags                   = optional(map(string))
    version                = optional(string)
    customer_managed_key = optional(object({
      key_vault_key_id          = string
      user_assigned_identity_id = string
    }))
    identity = optional(object({
      identity_ids = set(string)
      type         = string
    }))
    restore = optional(object({
      point_in_time_utc = string
      source_id         = string
    }))
    mongo_cluster_firewall_rules = optional(map(object({
      end_ip_address   = string
      name             = string
      start_ip_address = string
    })))
    mongo_cluster_users = optional(map(object({
      identity_provider_type = string
      object_id              = string
      principal_type         = string
      role = object({
        database = string
        name     = string
      })
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.mongo_clusters) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.mongo_clusters : [for kk in keys(coalesce(v0.mongo_cluster_firewall_rules, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.mongo_clusters : [for kk in keys(coalesce(v0.mongo_cluster_users, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
