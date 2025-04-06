resource "google_bigtable_instance" "bt-instance" {
  name          = var.instance_id
  display_name  = var.display_name
  instance_type = var.instance_type  # Can be 'DEVELOPMENT' or 'PRODUCTION'

dynamic cluster {
  for_each = toset(var.regions)

content {
  
  cluster_id    = var.cluster.cluster_id
  # instance_id   = google_bigtable_instance.bt-instance.name
  zone          = var.cluster.zone
  storage_type  = var.cluster.storage_type
  autoscaling_config {
    min_nodes      = var.cluster.autoscaling_config.min_nodes
    max_nodes      = var.cluster.autoscaling_config.max_nodes
    cpu_target     = var.cluster.autoscaling_config.cpu_target
    storage_target = var.cluster.autoscaling_config.storage_target
      }
    }
  }
}

