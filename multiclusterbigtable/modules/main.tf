resource "google_bigtable_instance" "example" {
  name          = var.instance_name
  display_name  = var.display_name
  instance_type = var.instance_type  # Can be 'DEVELOPMENT' or 'PRODUCTION'
}


resource "google_bigtable_cluster" "example" {
  for_each = toset(var.region)

  cluster_id    = var.cluster.cluster_id
  instance_id   = google_bigtable_instance.example.instance_id
  zone          = var.cluster.zone
  storage_type  = var.cluster.storage_type
  
  autoscaling_config {
    min_nodes      = var.cluster.autoscaling_config.min_nodes
    max_nodes      = var.cluster.autoscaling_config.max_nodes
    cpu_target     = var.cluster.autoscaling_config.cpu_target
    storage_target = var.cluster.autoscaling_config.storage_target
  }
}
