provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "accexample-rg"
  location = "West Europe"
}

resource "azurerm_virtual_network" "example" {
  name                = "example-vnet"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "example" {
  name                 = "example-subnet"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.1.0/24"]
}

data "azuread_service_principal" "example" {
  display_name = "Azure Cosmos DB"
}

resource "azurerm_role_assignment" "example" {
  scope                = azurerm_virtual_network.example.id
  role_definition_name = "Network Contributor"
  principal_id         = data.azuread_service_principal.example.object_id
}

resource "azurerm_cosmosdb_cassandra_cluster" "example" {
  name                           = "example-cluster"
  resource_group_name            = azurerm_resource_group.example.name
  location                       = azurerm_resource_group.example.location
  delegated_management_subnet_id = azurerm_subnet.example.id
  default_admin_password         = "Password1234"

  depends_on = [azurerm_role_assignment.example]
}

resource "azurerm_cosmosdb_cassandra_datacenter" "example" {
  name                           = "example-datacenter"
  location                       = azurerm_cosmosdb_cassandra_cluster.example.location
  cassandra_cluster_id           = azurerm_cosmosdb_cassandra_cluster.example.id
  delegated_management_subnet_id = azurerm_subnet.example.id
  node_count                     = 3
  disk_count                     = 4
  sku_name                       = "Standard_DS14_v2"
  availability_zones_enabled     = false
}