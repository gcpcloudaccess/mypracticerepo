output "vpc_name" {
  value = google_compute_network.custom_vpc.name
}

output "subnet_name" {
  value = google_compute_subnetwork.custom_subnet.name
}

output "subnet_ip_range" {
  value = google_compute_subnetwork.custom_subnet.ip_cidr_range
}
