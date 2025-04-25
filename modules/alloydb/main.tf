resource "google_alloydb_cluster" "example" {
  name     = "example-alloydb-cluster"
  region   = "us-central1"  # Adjust based on where you want to deploy
  project  = "your-project-id"
  network  = "default"  # VPC network name

  initial_user {
    username = "admin"
    password = "your-strong-password"
  }
}

resource "google_alloydb_instance" "example" {
  name        = "example-instance"
  cluster     = google_alloydb_cluster.example.name
  project     = "your-project-id"
  region      = "us-central1"

  machine_type = "db-n1-standard-2"  # Example machine type

  disk_config {
    type = "PD_STANDARD"  # Persistent disk type
    size_gb = 100         # Size of the disk
  }

  settings {
    tier = "STANDARD"  # Can be "BASIC", "STANDARD", or "HIGH"
  }
}
