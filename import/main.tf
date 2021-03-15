provider "google" {
  project = "terraform-showcase"
  region  = "europe-west3"
  zone    = "europe-west3-a"
}

resource "google_storage_bucket" "existing-bucket" {
  name                        = "showcase-stuff"
  location                    = "EU"
  storage_class               = "STANDARD"
  force_destroy               = true
  uniform_bucket_level_access = true
}

# terraform import google_storage_bucket.existing-bucket showcase-stuff
