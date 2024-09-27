variable "resource_group_name" {
  type        = string
  default     = "accexample-rg"
  description = "Name of the Azure Resource Group"
}

variable "location" {
  type        = string
  default     = "West Europe"
  description = "Azure region where resources will be created"
}

variable "vnet_name" {
  type        = string
  default     = "example-vnet"
  description = "Name of the Virtual Network"
}

variable "vnet_address_space" {
  type        = list(string)
  default     = ["10.0.0.0/16"]
  description = "Address space for the Virtual Network"
}

variable "subnet_name" {
  type        = string
  default     = "example-subnet"
  description = "Name of the Subnet"
}

variable "subnet_address_prefix" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "Address prefix for the Subnet"
}

variable "cassandra_cluster_name" {
  type        = string
  default     = "example-cluster"
  description = "Name of the Cosmos DB Cassandra Cluster"
}

variable "cassandra_admin_password" {
  type        = string
  default     = "Password1234"
  description = "Default admin password for Cassandra Cluster"
  sensitive   = true
}

variable "cassandra_datacenter_name" {
  type        = string
  default     = "example-datacenter"
  description = "Name of the Cassandra Datacenter"
}

variable "cassandra_node_count" {
  type        = number
  default     = 3
  description = "Number of nodes in the Cassandra Datacenter"
}

variable "cassandra_disk_count" {
  type        = number
  default     = 4
  description = "Number of disks per node in the Cassandra Datacenter"
}

variable "cassandra_sku_name" {
  type        = string
  default     = "Standard_DS14_v2"
  description = "SKU name for the Cassandra Datacenter"
}

variable "cassandra_availability_zones_enabled" {
  type        = bool
  default     = false
  description = "Whether to enable availability zones for the Cassandra Datacenter"
}
