
module "bigtable_instance" {
  source         = "../../modules/multicluster"
  instance_id    = var.instance_id
  instance_type  = var.instance_type
  project_id     = var.project_id
  regions        = var.regions
  display_name   = var.display_name
  location       = var.location
#   cluster_id     = var.cluster_id
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
  zone           = var.cluster.zone
#   nodes_per_cluster = var.nodes_per_cluster
  # storage_type   = "SSD" 
}
