
module "bigtable_instance" {
  source         = "../../modules/bigtable"
  instance_name  = var.instance_name
  instance_type  = var.instance_type
  project_id     = var.project_id
  region         = var.region
  display_name   = "My Bigtable Instance"
  location       = var.location
  # cluster_id     = var.cluster_id
    cluster = {
    cluster_id   = var.cluster.cluster_id
    storage_type = var.cluster.storage_type
    zone    = var.cluster.zone
   autoscaling_config = {
      min_nodes = var.cluster.autoscaling_config.min_nodes
      max_nodes = var.cluster.autoscaling_config.max_nodes
      cpu_target = var.cluster.autoscaling_config.cpu_target
      storage_target  = var.cluster.autoscaling_config.storage_target
    } 
  }
  cluster_count  = var.cluster_count
  zone           = var.zone
  num_nodes      = var.num_nodes
  storage_type   = "SSD"
}
