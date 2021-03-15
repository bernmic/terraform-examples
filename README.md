# Terraform examples

Some basic examples of Terraform scripts with Google Cloud Platform

## example-1

Create a compute engine instance.

## example-2

Enhance example-1 by adding a network. It shows also the dependency between 2 resources.

## example-3

Same as example-2 but the state is now written to a GCS bucket.

## example-4

Same as example-2 but uses variables.

## import

Example how to import existing resources.

## secret-manager

Example module for creating secrets in the GCP secret manager.

## postgres

Create a PostgreSQL instance in CloudSQL and store the generated admin password in the secret manager.

## use-data

Example for the usage of a data block. Reads a secret from the secret manager.
