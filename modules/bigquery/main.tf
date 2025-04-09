# Create a BigQuery Dataset
resource "google_bigquery_dataset" "dataset" {
  dataset_id = var.dataset_id
  project    = var.project_id
  location   = var.location
  description = "A BigQuery dataset for storing data"
}

# Create a BigQuery Table

resource "google_bigquery_table" "table" {
  table_id   = var.table_id
  dataset_id = google_bigquery_dataset.dataset.dataset_id
  project    = var.project_id

}