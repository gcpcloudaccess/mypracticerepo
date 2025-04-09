variable "project_id" {
    description = "The GCP project ID to create the artifact repository"
    type = string
}

variable "location" {
  description = "The location of the Bigtable instance"
  type        = string
}

variable "dataset_id" {
  description = "The descrition for the dataset"
  type = string
}

variable "table_id" {
  description = "The descrition for the table"
  type = string
}