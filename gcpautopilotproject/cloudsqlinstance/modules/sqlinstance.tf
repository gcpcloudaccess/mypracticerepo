provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_sql_database_instance" "sql_instance" {
  name             = var.instance_name
  database_version = var.database_version
  region           = var.region

  settings {
    tier = var.instance_tier

    ip_configuration {
      ipv4_enabled = true
    }
  }

  deletion_protection = var.deletion_protection
}

# Create databases
resource "google_sql_database" "databases" {
  for_each = var.databases

  instance = google_sql_database_instance.sql_instance.name
  name     = each.key
  charset  = each.value.charset
  collation = each.value.collation
}

# Create user groups and assign roles
resource "google_sql_user" "user_groups" {
  for_each = var.user_groups

  instance  = google_sql_database_instance.sql_instance.name
  name      = each.key
  password  = each.value.password

  roles = each.value.roles
}

# Create super user
resource "google_sql_user" "super_user" {
  instance = google_sql_database_instance.sql_instance.name
  name     = var.super_user.name
  password = var.super_user.password

  # Superuser roles can be configured if available for the database type
  roles = var.super_user.roles
}

# Optional: Secret Manager Integration (for passwords)
resource "google_secret_manager_secret" "user_passwords" {
  for_each = merge(var.user_groups, { (var.super_user.name) = var.super_user })

  secret_id = "${each.key}-password"
  replication {
    automatic = true
  }
}

resource "google_secret_manager_secret_version" "user_password_versions" {
  for_each = merge(var.user_groups, { (var.super_user.name) = var.super_user })

  secret      = google_secret_manager_secret.user_passwords[each.key].secret_id
  secret_data = each.value.password
}
