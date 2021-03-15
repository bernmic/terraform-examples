# Create a secret for local-admin-password
resource "google_secret_manager_secret" "postgres-password" {
  secret_id = var.name
  replication {
    user_managed {
      replicas {
        location = var.location
      }
      replicas {
        location = var.alternative_location
      }
    }
  }
}
# Add the secret data for local-admin-password secret
resource "google_secret_manager_secret_version" "postgres-password-version" {
  secret      = google_secret_manager_secret.postgres-password.id
  secret_data = var.secret_data
}
