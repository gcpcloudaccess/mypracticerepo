output "instance_id" {
  value = google_bigtable_instance.bt-instance.name
}

output "cluster_ids" {
  value = [for cluster in google_bigtable_cluster.bt-cluster : cluster.cluster_id]
}
