#MySQL

  db_version               = "MYSQL_8_0"
  db_tier                  = "db-f1-micro"
  database_name            = "my_database"
  db_username              = "admin"
  allowed_consumer_projects = ["inspired-goal-432411-p0"]

#Instance
  instance_name = "dev"


# HA
read_replica_regions    = ["us-east1","us-west1"]

# Backup configuration
backup_configuration = {
  enabled                         = true
  start_time                      = "03:00"
  binary_log_enabled              = true
  point_in_time_recovery_enabled  = true
}

# Edition
edition = "ENTERPRISE_PLUS"

# Data Cache