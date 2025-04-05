output "instance_id" {
  value = google_bigtable_instance.example.instance_id
}

output "cluster_ids" {
  value = [for cluster in google_bigtable_cluster.example : cluster.cluster_id]
}