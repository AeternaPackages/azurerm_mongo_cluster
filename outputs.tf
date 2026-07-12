# --- azurerm_mongo_cluster ---
output "mongo_clusters_id" {
  description = "Map of id values across all mongo_clusters, keyed the same as var.mongo_clusters"
  value       = module.mongo_clusters.mongo_clusters_id
}

output "mongo_clusters_administrator_password" {
  description = "Map of administrator_password values across all mongo_clusters, keyed the same as var.mongo_clusters"
  value       = module.mongo_clusters.mongo_clusters_administrator_password
  sensitive   = true
}

output "mongo_clusters_administrator_username" {
  description = "Map of administrator_username values across all mongo_clusters, keyed the same as var.mongo_clusters"
  value       = module.mongo_clusters.mongo_clusters_administrator_username
}

output "mongo_clusters_authentication_methods" {
  description = "Map of authentication_methods values across all mongo_clusters, keyed the same as var.mongo_clusters"
  value       = module.mongo_clusters.mongo_clusters_authentication_methods
}

output "mongo_clusters_compute_tier" {
  description = "Map of compute_tier values across all mongo_clusters, keyed the same as var.mongo_clusters"
  value       = module.mongo_clusters.mongo_clusters_compute_tier
}

output "mongo_clusters_connection_strings" {
  description = "Map of connection_strings values across all mongo_clusters, keyed the same as var.mongo_clusters"
  value       = module.mongo_clusters.mongo_clusters_connection_strings
  sensitive   = true
}

output "mongo_clusters_create_mode" {
  description = "Map of create_mode values across all mongo_clusters, keyed the same as var.mongo_clusters"
  value       = module.mongo_clusters.mongo_clusters_create_mode
}

output "mongo_clusters_customer_managed_key" {
  description = "Map of customer_managed_key values across all mongo_clusters, keyed the same as var.mongo_clusters"
  value       = module.mongo_clusters.mongo_clusters_customer_managed_key
}

output "mongo_clusters_data_api_mode_enabled" {
  description = "Map of data_api_mode_enabled values across all mongo_clusters, keyed the same as var.mongo_clusters"
  value       = module.mongo_clusters.mongo_clusters_data_api_mode_enabled
}

output "mongo_clusters_high_availability_mode" {
  description = "Map of high_availability_mode values across all mongo_clusters, keyed the same as var.mongo_clusters"
  value       = module.mongo_clusters.mongo_clusters_high_availability_mode
}

output "mongo_clusters_identity" {
  description = "Map of identity values across all mongo_clusters, keyed the same as var.mongo_clusters"
  value       = module.mongo_clusters.mongo_clusters_identity
}

output "mongo_clusters_location" {
  description = "Map of location values across all mongo_clusters, keyed the same as var.mongo_clusters"
  value       = module.mongo_clusters.mongo_clusters_location
}

output "mongo_clusters_name" {
  description = "Map of name values across all mongo_clusters, keyed the same as var.mongo_clusters"
  value       = module.mongo_clusters.mongo_clusters_name
}

output "mongo_clusters_preview_features" {
  description = "Map of preview_features values across all mongo_clusters, keyed the same as var.mongo_clusters"
  value       = module.mongo_clusters.mongo_clusters_preview_features
}

output "mongo_clusters_public_network_access" {
  description = "Map of public_network_access values across all mongo_clusters, keyed the same as var.mongo_clusters"
  value       = module.mongo_clusters.mongo_clusters_public_network_access
}

output "mongo_clusters_resource_group_name" {
  description = "Map of resource_group_name values across all mongo_clusters, keyed the same as var.mongo_clusters"
  value       = module.mongo_clusters.mongo_clusters_resource_group_name
}

output "mongo_clusters_restore" {
  description = "Map of restore values across all mongo_clusters, keyed the same as var.mongo_clusters"
  value       = module.mongo_clusters.mongo_clusters_restore
}

output "mongo_clusters_shard_count" {
  description = "Map of shard_count values across all mongo_clusters, keyed the same as var.mongo_clusters"
  value       = module.mongo_clusters.mongo_clusters_shard_count
}

output "mongo_clusters_source_location" {
  description = "Map of source_location values across all mongo_clusters, keyed the same as var.mongo_clusters"
  value       = module.mongo_clusters.mongo_clusters_source_location
}

output "mongo_clusters_source_server_id" {
  description = "Map of source_server_id values across all mongo_clusters, keyed the same as var.mongo_clusters"
  value       = module.mongo_clusters.mongo_clusters_source_server_id
}

output "mongo_clusters_storage_size_in_gb" {
  description = "Map of storage_size_in_gb values across all mongo_clusters, keyed the same as var.mongo_clusters"
  value       = module.mongo_clusters.mongo_clusters_storage_size_in_gb
}

output "mongo_clusters_storage_type" {
  description = "Map of storage_type values across all mongo_clusters, keyed the same as var.mongo_clusters"
  value       = module.mongo_clusters.mongo_clusters_storage_type
}

output "mongo_clusters_tags" {
  description = "Map of tags values across all mongo_clusters, keyed the same as var.mongo_clusters"
  value       = module.mongo_clusters.mongo_clusters_tags
}

output "mongo_clusters_version" {
  description = "Map of version values across all mongo_clusters, keyed the same as var.mongo_clusters"
  value       = module.mongo_clusters.mongo_clusters_version
}

# --- azurerm_mongo_cluster_firewall_rule ---
output "mongo_cluster_firewall_rules_id" {
  description = "Map of id values across all mongo_cluster_firewall_rules, keyed the same as var.mongo_cluster_firewall_rules"
  value       = module.mongo_cluster_firewall_rules.mongo_cluster_firewall_rules_id
}

output "mongo_cluster_firewall_rules_end_ip_address" {
  description = "Map of end_ip_address values across all mongo_cluster_firewall_rules, keyed the same as var.mongo_cluster_firewall_rules"
  value       = module.mongo_cluster_firewall_rules.mongo_cluster_firewall_rules_end_ip_address
}

output "mongo_cluster_firewall_rules_mongo_cluster_id" {
  description = "Map of mongo_cluster_id values across all mongo_cluster_firewall_rules, keyed the same as var.mongo_cluster_firewall_rules"
  value       = module.mongo_cluster_firewall_rules.mongo_cluster_firewall_rules_mongo_cluster_id
}

output "mongo_cluster_firewall_rules_name" {
  description = "Map of name values across all mongo_cluster_firewall_rules, keyed the same as var.mongo_cluster_firewall_rules"
  value       = module.mongo_cluster_firewall_rules.mongo_cluster_firewall_rules_name
}

output "mongo_cluster_firewall_rules_start_ip_address" {
  description = "Map of start_ip_address values across all mongo_cluster_firewall_rules, keyed the same as var.mongo_cluster_firewall_rules"
  value       = module.mongo_cluster_firewall_rules.mongo_cluster_firewall_rules_start_ip_address
}

# --- azurerm_mongo_cluster_user ---
output "mongo_cluster_users_id" {
  description = "Map of id values across all mongo_cluster_users, keyed the same as var.mongo_cluster_users"
  value       = module.mongo_cluster_users.mongo_cluster_users_id
}

output "mongo_cluster_users_identity_provider_type" {
  description = "Map of identity_provider_type values across all mongo_cluster_users, keyed the same as var.mongo_cluster_users"
  value       = module.mongo_cluster_users.mongo_cluster_users_identity_provider_type
}

output "mongo_cluster_users_mongo_cluster_id" {
  description = "Map of mongo_cluster_id values across all mongo_cluster_users, keyed the same as var.mongo_cluster_users"
  value       = module.mongo_cluster_users.mongo_cluster_users_mongo_cluster_id
}

output "mongo_cluster_users_object_id" {
  description = "Map of object_id values across all mongo_cluster_users, keyed the same as var.mongo_cluster_users"
  value       = module.mongo_cluster_users.mongo_cluster_users_object_id
}

output "mongo_cluster_users_principal_type" {
  description = "Map of principal_type values across all mongo_cluster_users, keyed the same as var.mongo_cluster_users"
  value       = module.mongo_cluster_users.mongo_cluster_users_principal_type
}

output "mongo_cluster_users_role" {
  description = "Map of role values across all mongo_cluster_users, keyed the same as var.mongo_cluster_users"
  value       = module.mongo_cluster_users.mongo_cluster_users_role
}


