variable "project" {
  type        = string
  description = "GCP project where resources are deployed"
  default     = "terraform-showcase"
}

variable "location" {
  type        = string
  description = "GCP location where resources are deployed, eg. europe-west3"
  default     = "europe-west3"
}

variable "alternative_location" {
  type        = string
  description = "GCP location where resources are deployed, eg. europe-west3"
  default     = "europe-west4"
}
