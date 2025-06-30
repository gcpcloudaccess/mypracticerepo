provider "google" {
  project = var.project_id
  region  = var.region
}

# Create VPC network
resource "google_compute_network" "custom_vpc" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
  routing_mode            = "REGIONAL"
}

# Create subnet
resource "google_compute_subnetwork" "custom_subnet" {
  name          = var.subnet_name
  ip_cidr_range = var.subnet_cidr
  region        = var.region
  network       = google_compute_network.custom_vpc.id
}


------------------
Calling module:
module "my_network" {
  source       = "./modules/network"
  network_name = "custom-vpc"
  subnets = [
    {
      name       = "subnet-a"
      cidr       = "10.10.0.0/24"
      region     = "us-central1"
    },
    {
      name       = "subnet-b"
      cidr       = "10.20.0.0/24"
      region     = "us-west1"
    }
  ]
  project_id   = var.project_id
}
