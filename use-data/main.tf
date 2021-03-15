provider "google" {
  project = "terraform-showcase"
  region  = "europe-west3"
  zone    = "europe-west3-a"
}

data "google_secret_manager_secret_version" "credentials" {
  secret = "credentials-for-everything"
}

output "whistle-credentials" {
  value = data.google_secret_manager_secret_version.credentials.secret_data
}
