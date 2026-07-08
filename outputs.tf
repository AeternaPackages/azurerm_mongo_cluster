# --- azurerm_mongo_cluster ---
output "mongo_clusters" {
  description = "All mongo_cluster resources"
  value       = module.mongo_clusters.mongo_clusters
  sensitive   = true
}
output "mongo_clusters_administrator_password" {
  description = "List of administrator_password values across all mongo_clusters"
  value       = [for k, v in module.mongo_clusters.mongo_clusters : v.administrator_password]
  sensitive   = true
}
output "mongo_clusters_administrator_username" {
  description = "List of administrator_username values across all mongo_clusters"
  value       = [for k, v in module.mongo_clusters.mongo_clusters : v.administrator_username]
}
output "mongo_clusters_authentication_methods" {
  description = "List of authentication_methods values across all mongo_clusters"
  value       = [for k, v in module.mongo_clusters.mongo_clusters : v.authentication_methods]
}
output "mongo_clusters_compute_tier" {
  description = "List of compute_tier values across all mongo_clusters"
  value       = [for k, v in module.mongo_clusters.mongo_clusters : v.compute_tier]
}
output "mongo_clusters_connection_strings" {
  description = "List of connection_strings values across all mongo_clusters"
  value       = [for k, v in module.mongo_clusters.mongo_clusters : v.connection_strings]
  sensitive   = true
}
output "mongo_clusters_create_mode" {
  description = "List of create_mode values across all mongo_clusters"
  value       = [for k, v in module.mongo_clusters.mongo_clusters : v.create_mode]
}
output "mongo_clusters_customer_managed_key" {
  description = "List of customer_managed_key values across all mongo_clusters"
  value       = [for k, v in module.mongo_clusters.mongo_clusters : v.customer_managed_key]
}
output "mongo_clusters_data_api_mode_enabled" {
  description = "List of data_api_mode_enabled values across all mongo_clusters"
  value       = [for k, v in module.mongo_clusters.mongo_clusters : v.data_api_mode_enabled]
}
output "mongo_clusters_high_availability_mode" {
  description = "List of high_availability_mode values across all mongo_clusters"
  value       = [for k, v in module.mongo_clusters.mongo_clusters : v.high_availability_mode]
}
output "mongo_clusters_identity" {
  description = "List of identity values across all mongo_clusters"
  value       = [for k, v in module.mongo_clusters.mongo_clusters : v.identity]
}
output "mongo_clusters_location" {
  description = "List of location values across all mongo_clusters"
  value       = [for k, v in module.mongo_clusters.mongo_clusters : v.location]
}
output "mongo_clusters_name" {
  description = "List of name values across all mongo_clusters"
  value       = [for k, v in module.mongo_clusters.mongo_clusters : v.name]
}
output "mongo_clusters_preview_features" {
  description = "List of preview_features values across all mongo_clusters"
  value       = [for k, v in module.mongo_clusters.mongo_clusters : v.preview_features]
}
output "mongo_clusters_public_network_access" {
  description = "List of public_network_access values across all mongo_clusters"
  value       = [for k, v in module.mongo_clusters.mongo_clusters : v.public_network_access]
}
output "mongo_clusters_resource_group_name" {
  description = "List of resource_group_name values across all mongo_clusters"
  value       = [for k, v in module.mongo_clusters.mongo_clusters : v.resource_group_name]
}
output "mongo_clusters_restore" {
  description = "List of restore values across all mongo_clusters"
  value       = [for k, v in module.mongo_clusters.mongo_clusters : v.restore]
}
output "mongo_clusters_shard_count" {
  description = "List of shard_count values across all mongo_clusters"
  value       = [for k, v in module.mongo_clusters.mongo_clusters : v.shard_count]
}
output "mongo_clusters_source_location" {
  description = "List of source_location values across all mongo_clusters"
  value       = [for k, v in module.mongo_clusters.mongo_clusters : v.source_location]
}
output "mongo_clusters_source_server_id" {
  description = "List of source_server_id values across all mongo_clusters"
  value       = [for k, v in module.mongo_clusters.mongo_clusters : v.source_server_id]
}
output "mongo_clusters_storage_size_in_gb" {
  description = "List of storage_size_in_gb values across all mongo_clusters"
  value       = [for k, v in module.mongo_clusters.mongo_clusters : v.storage_size_in_gb]
}
output "mongo_clusters_storage_type" {
  description = "List of storage_type values across all mongo_clusters"
  value       = [for k, v in module.mongo_clusters.mongo_clusters : v.storage_type]
}
output "mongo_clusters_tags" {
  description = "List of tags values across all mongo_clusters"
  value       = [for k, v in module.mongo_clusters.mongo_clusters : v.tags]
}
output "mongo_clusters_version" {
  description = "List of version values across all mongo_clusters"
  value       = [for k, v in module.mongo_clusters.mongo_clusters : v.version]
}


# --- azurerm_mongo_cluster_firewall_rule ---
output "mongo_cluster_firewall_rules" {
  description = "All mongo_cluster_firewall_rule resources"
  value       = module.mongo_cluster_firewall_rules.mongo_cluster_firewall_rules
}
output "mongo_cluster_firewall_rules_end_ip_address" {
  description = "List of end_ip_address values across all mongo_cluster_firewall_rules"
  value       = [for k, v in module.mongo_cluster_firewall_rules.mongo_cluster_firewall_rules : v.end_ip_address]
}
output "mongo_cluster_firewall_rules_mongo_cluster_id" {
  description = "List of mongo_cluster_id values across all mongo_cluster_firewall_rules"
  value       = [for k, v in module.mongo_cluster_firewall_rules.mongo_cluster_firewall_rules : v.mongo_cluster_id]
}
output "mongo_cluster_firewall_rules_name" {
  description = "List of name values across all mongo_cluster_firewall_rules"
  value       = [for k, v in module.mongo_cluster_firewall_rules.mongo_cluster_firewall_rules : v.name]
}
output "mongo_cluster_firewall_rules_start_ip_address" {
  description = "List of start_ip_address values across all mongo_cluster_firewall_rules"
  value       = [for k, v in module.mongo_cluster_firewall_rules.mongo_cluster_firewall_rules : v.start_ip_address]
}


# --- azurerm_mongo_cluster_user ---
output "mongo_cluster_users" {
  description = "All mongo_cluster_user resources"
  value       = module.mongo_cluster_users.mongo_cluster_users
}
output "mongo_cluster_users_identity_provider_type" {
  description = "List of identity_provider_type values across all mongo_cluster_users"
  value       = [for k, v in module.mongo_cluster_users.mongo_cluster_users : v.identity_provider_type]
}
output "mongo_cluster_users_mongo_cluster_id" {
  description = "List of mongo_cluster_id values across all mongo_cluster_users"
  value       = [for k, v in module.mongo_cluster_users.mongo_cluster_users : v.mongo_cluster_id]
}
output "mongo_cluster_users_object_id" {
  description = "List of object_id values across all mongo_cluster_users"
  value       = [for k, v in module.mongo_cluster_users.mongo_cluster_users : v.object_id]
}
output "mongo_cluster_users_principal_type" {
  description = "List of principal_type values across all mongo_cluster_users"
  value       = [for k, v in module.mongo_cluster_users.mongo_cluster_users : v.principal_type]
}
output "mongo_cluster_users_role" {
  description = "List of role values across all mongo_cluster_users"
  value       = [for k, v in module.mongo_cluster_users.mongo_cluster_users : v.role]
}



