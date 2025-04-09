variable "project_id" {
  description = "The Google Cloud project ID"
  type        = string
  default = "pixelpoc"
}

variable "regions" {
  type    = list(string)
  default = ["us-central1"]
}

# Variable values for cluster example
variable "cluster" {
  default = {
    cluster_id = "bt-cluster-central"
    storage_type = "SSD"
    zone = "us-central1-a"
    autoscaling_config = {
      min_nodes      = 2
      max_nodes      = 5
      cpu_target     = 75
      storage_target = 80
   }
 }
}

# variable "nodes_per_cluster" {
#   type    = number
#   default = 3
# }

variable "cluster_count" {
  description = "Number of clusters in the Bigtable instance"
  type        = number
  default = 1
}

variable "instance_id" {
  type    = string
  default = "my-bigtable-instance"
}

variable "instance_type" {
  description = "The type of Bigtable instance. Valid values are 'PRODUCTION' or 'DEVELOPMENT'"
  type        = string
  default = "PRODUCTION"
}

variable "display_name" {
  description = "The display name of the Bigtable instance"
  type        = string
  default = "Bigtable instance with multicluster"
}

#Variable definition for BigQuery

variable "location" {
  description = "The location of the Bigtable instance"
  type        = string
  default = "US"
}

variable "dataset_id" {
  description = "The descrition for the dataset"
  type = string
  default = "bq-dataset"
}

variable "table_id" {
  description = "The descrition for the table"
  type = string
  default = "bq-table1"
}