
# Call the HA Cloud SQL instance module

module "ha_cloud_sql_instance" {
  source = "../../modules/cloudsql_ha"

  project_id                = var.project_id
  region                    = var.region
  db_version                = var.db_version
  db_tier                   = var.db_tier
  instance_name             = var.instance_name
  allowed_consumer_projects = var.allowed_consumer_projects
  read_replica_regions      = var.read_replica_regions

  # Backup configuration
  backup_configuration = var.backup_configuration

  # Edition (set to "ENTERPRISE_PLUS" in your variables.tf)
  edition = var.edition
}