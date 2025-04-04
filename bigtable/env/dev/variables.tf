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
  default = "bigtable-cluster1"
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
#   default = {  
#       cluster_id  = var.cluster_id
#       storage_type = var.storage_type
#       zone = var.zone
#       autoscaling_config = {  
#         min_nodes = 1
#         max_nodes = 2
#         cpu_target = 80
#         storage_target  =  1024 //(1 TiB)
#     }
#  }  
# }

variable "zone" {
  description = "The zone for the Bigtable cluster"
  type        = string
  default = "us-central1-a"
}

variable "num_nodes" {
  description = "The number of nodes for the Bigtable cluster"
  type        = number
  default     = 1
}

variable "storage_type" {
  description = "The storage type for the Bigtable cluster. Valid values are 'HDD' or 'SSD'"
  type        = string
  default     = "SSD"
}
