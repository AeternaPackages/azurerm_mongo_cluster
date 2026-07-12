locals {
  mongo_clusters = { for k1, v1 in var.mongo_clusters : k1 => { administrator_password = v1.administrator_password, administrator_username = v1.administrator_username, authentication_methods = v1.authentication_methods, compute_tier = v1.compute_tier, create_mode = v1.create_mode, customer_managed_key = v1.customer_managed_key, data_api_mode_enabled = v1.data_api_mode_enabled, high_availability_mode = v1.high_availability_mode, identity = v1.identity, location = v1.location, name = v1.name, preview_features = v1.preview_features, public_network_access = v1.public_network_access, resource_group_name = v1.resource_group_name, restore = v1.restore, shard_count = v1.shard_count, source_location = v1.source_location, source_server_id = v1.source_server_id, storage_size_in_gb = v1.storage_size_in_gb, storage_type = v1.storage_type, tags = v1.tags, version = v1.version } }

  mongo_cluster_firewall_rules = merge([
    for k1, v1 in var.mongo_clusters : {
      for k2, v2 in coalesce(v1.mongo_cluster_firewall_rules, {}) :
      "${k1}/${k2}" => merge(v2, {
        mongo_cluster_id = module.mongo_clusters.mongo_clusters_id["${k1}"]
      })
    }
  ]...)

  mongo_cluster_users = merge([
    for k1, v1 in var.mongo_clusters : {
      for k2, v2 in coalesce(v1.mongo_cluster_users, {}) :
      "${k1}/${k2}" => merge(v2, {
        mongo_cluster_id = module.mongo_clusters.mongo_clusters_id["${k1}"]
      })
    }
  ]...)
}

module "mongo_clusters" {
  source         = "git::https://github.com/AeternaModules/azurerm_mongo_cluster.git?ref=v4.80.0"
  mongo_clusters = local.mongo_clusters
}

module "mongo_cluster_firewall_rules" {
  source                       = "git::https://github.com/AeternaModules/azurerm_mongo_cluster_firewall_rule.git?ref=v4.80.0"
  mongo_cluster_firewall_rules = local.mongo_cluster_firewall_rules
  depends_on                   = [module.mongo_clusters]
}

module "mongo_cluster_users" {
  source              = "git::https://github.com/AeternaModules/azurerm_mongo_cluster_user.git?ref=v4.80.0"
  mongo_cluster_users = local.mongo_cluster_users
  depends_on          = [module.mongo_clusters]
}

