output "secret_resource_id" {
  value = google_secret_manager_secret_version.postgres-password-version.id
}
