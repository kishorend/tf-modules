# Output the Resource Group Name
output "resource_group_name" {
  value       = azurerm_resource_group.example.name
  description = "The name of the Resource Group"
}

# Output the Virtual Network Name
output "virtual_network_name" {
  value       = azurerm_virtual_network.example.name
  description = "The name of the Virtual Network"
}

# Output the Subnet ID
output "subnet_id" {
  value       = azurerm_subnet.example.id
  description = "The ID of the Subnet"
}

# Output the Cassandra Cluster Name
output "cassandra_cluster_name" {
  value       = azurerm_cosmosdb_cassandra_cluster.example.name
  description = "The name of the Cassandra Cluster"
}

# Output the Cassandra Datacenter Name
output "cassandra_datacenter_name" {
  value       = azurerm_cosmosdb_cassandra_datacenter.example.name
  description = "The name of the Cassandra Datacenter"
}

# Output the Cassandra Cluster Endpoint
output "cassandra_cluster_endpoint" {
  value       = azurerm_cosmosdb_cassandra_cluster.example.cassandra_endpoint
  description = "The Cassandra endpoint for the Cassandra Cluster"
}
