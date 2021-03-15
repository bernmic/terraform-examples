provider "google" {
  project = var.project
  region  = var.location
  zone    = "${var.location}-a"
}

resource "google_compute_network" "vpc_network" {
  name                    = "${var.prefix}-network"
  auto_create_subnetworks = "true"
}

resource "google_compute_instance" "vm_instance" {
  name         = "${var.prefix}-instance"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.self_link
    access_config {
    }
  }
}
