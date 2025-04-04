
module "bigtable_instance" {
  source         = "../../modules/bigtable"
  instance_name  = var.instance_name
  instance_type  = var.instance_type
  project_id     = var.project_id
  region         = var.region
  display_name   = "My Bigtable Instance"
  location       = var.location
  cluster_id     = var.cluster_id
  cluster_count  = var.cluster_count
  zone           = var.zone
  num_nodes      = var.num_nodes
  storage_type   = "SSD"
}
