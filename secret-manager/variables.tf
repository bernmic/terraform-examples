variable "name" {
  type        = string
  description = "The name of the secret"
}

variable "project" {
  type        = string
  description = "The project id where the secret should be created"
}

variable "secret_data" {
  type        = string
  description = "The data of the secret, eg. a password"
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
