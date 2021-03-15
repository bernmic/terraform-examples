provider "google" {
  project = var.project
  region  = var.location
  zone    = "${var.location}-a"
}

resource "random_id" "db_name_suffix" {
  byte_length = 4
}

module "sql-db_postgresql" {
  source           = "GoogleCloudPlatform/sql-db/google//modules/postgresql"
  version          = "4.5.0"
  project_id       = var.project
  name             = "showcase-${random_id.db_name_suffix.hex}"
  database_version = "POSTGRES_11"
  region           = var.location
  zone             = "${var.location}-a"
}

module "secret_postgresql" {
  source      = "../secret-manager"
  name        = "postgres-password"
  project     = var.project
  secret_data = module.sql-db_postgresql.generated_user_password
}

# Module info:
# https://github.com/terraform-google-modules/terraform-google-sql-db/tree/v4.5.0/modules/postgresql
# https://registry.terraform.io/modules/GoogleCloudPlatform/sql-db/google/latest/submodules/postgresql
