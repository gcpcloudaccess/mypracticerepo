# modules/bigtable_instance/variables.tf

variable "instance_name" {
  description = "The name of the Bigtable instance"
  type        = string
}

variable "project_id" {
  description = "The Google Cloud project ID"
  type        = string
}

variable "region" {
  description = "The Google Cloud region"
  type        = string
}

variable "cluster_count" {
  description = "Number of clusters in the Bigtable instance"
  type        = number
}

variable "instance_type" {
  description = "The type of Bigtable instance. Valid values are 'PRODUCTION' or 'DEVELOPMENT'"
  type        = string
}

variable "display_name" {
  description = "The display name of the Bigtable instance"
  type        = string
}

variable "location" {
  description = "The location of the Bigtable instance"
  type        = string
}

variable "cluster_id" {
  description = "The ID of the Bigtable cluster"
  type        = string
}

# variable "cluster" {
#   type = object({
#     cluster_id = string
#     storage_type = string
#     zone = string
#     autoscaling_config= object({
#       min_nodes = number
#       max_nodes = number
#       cpu_target = number
#       storage_target  = number
#     })   
#   }) 
# } 

variable "zone" {
  description = "The zone for the Bigtable cluster"
  type        = string
}

variable "num_nodes" {
  description = "The number of nodes for the Bigtable cluster"
  type        = number
}

variable "storage_type" {
  description = "The storage type for the Bigtable cluster. Valid values are 'HDD' or 'SSD'"
  type        = string
}
