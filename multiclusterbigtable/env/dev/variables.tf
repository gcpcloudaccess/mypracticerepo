
variable "regions" {
  type    = list(string)
  default = ["us-central1", "us-east1"]
}

variable "nodes_per_cluster" {
  type    = number
  default = 3
}

variable "instance_id" {
  type    = string
  default = "my-bigtable-instance"
}

# Variable values for cluster example
variable "cluster" {
  default = {
    cluster_id = "my-cluster"
    storage_type = "HDD"
    zone = "us-central1-a"
    autoscaling_config = {
      min_nodes      = 3
      max_nodes      = 10
      cpu_target     = 0.75
      storage_target = 0.80
    }
  }
}

output "instance_id" {
  value = google_bigtable_instance.example.instance_id
}

output "cluster_ids" {
  value = [for cluster in google_bigtable_cluster.example : cluster.cluster_id]
}

variable "regions" {
  type    = list(string)
  default = ["us-central1", "us-east1"]
}

variable "nodes_per_cluster" {
  type    = number
  default = 3
}

variable "instance_id" {
  type    = string
  default = "my-bigtable-instance"
}
