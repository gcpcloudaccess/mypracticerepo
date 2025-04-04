# modules/bigtable_instance/variables.tf

variable "instance_name" {
  description = "The name of the Bigtable instance"
  type        = string
  default = "my-bigtable-instance"
}

variable "project_id" {
  description = "The Google Cloud project ID"
  type        = string
  default = "pixelpoc"
}

variable "region" {
  description = "The Google Cloud region"
  type        = string
  default = "us-central1"
}

variable "cluster_count" {
  description = "Number of clusters in the Bigtable instance"
  type        = number
  default     = 1
}

variable "instance_type" {
  description = "The type of Bigtable instance. Valid values are 'PRODUCTION' or 'DEVELOPMENT'"
  type        = string
  default     = "PRODUCTION"
}

variable "display_name" {
  description = "The display name of the Bigtable instance"
  type        = string
  default = "This is test instance for BigTable"
}

variable "location" {
  description = "The location of the Bigtable instance"
  type        = string
  default = "US"
}

variable "cluster_id" {
  description = "The ID of the Bigtable cluster"
  type        = string
  
}

variable "zone" {
  description = "The zone for the Bigtable cluster"
  type        = string
}

variable "num_nodes" {
  description = "The number of nodes for the Bigtable cluster"
  type        = number
  default     = 3
}

variable "storage_type" {
  description = "The storage type for the Bigtable cluster. Valid values are 'HDD' or 'SSD'"
  type        = string
  default     = "SSD"
}
