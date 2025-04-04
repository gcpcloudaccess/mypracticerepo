resource "google_bigtable_instance" "my_bigtable" {
  name         = var.instance_name        # The name of the Bigtable instance
#   cluster_id   = var.cluster_id        # The ID for the cluster
  instance_type = var.instance_type                   # Can be "DEVELOPMENT" or "PRODUCTION"
  display_name = "My Bigtable Instance"         # A friendly name for display
  project      = var.project_id             # Replace with your GCP project ID
#   region       = "us-central1"                  # The region to host your Bigtable instance

  cluster {
    cluster_id   = var.cluster_id        # Cluster ID
    zone          = var.zone            # The zone to deploy the cluster
    num_nodes     = var.num_nodes                           # Number of nodes in the cluster
    storage_type  = "SSD"                       # Can be "HDD" or "SSD"
  }
}

resource "google_bigtable_table" "my_table" {
  name          = "my-bigtable-table"          # The name of the table
  instance_name = google_bigtable_instance.my_bigtable.name  # Reference to the instance
  column_family {
    family = "cf1"                             # The column family name
  }
  column_family {
    family = "cf2"
  }
}
