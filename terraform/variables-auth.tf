# Google Cloud connection & authentication and Application configuration | variables-auth.tf

# GCP authentication file
variable "gcp_auth_file" {
  type = string
  description = "GCP authentication file"
}

# define GCP project name
#variable "app_project" {
#  type = string
#  description = "GCP project name"
#}

# define application name
variable "app_name" {
  type = string
  description = "Application name"
}

# define application domain
variable "app_domain" {
  type = string
  description = "Application domain"
}

# define application environment
variable "app_environment" {
  type = string
  description = "Application environment"
}

variable "app_node_count" {
  type = string
  description = "Number of servers to build"
}

# define GCP region
#variable "gcp_region" {
#  type        = string
#  description = "GCP region"
#}

# define GCP project name
variable "gcp_project" {
  type        = string
  description = "GCP project name"
}

#####################################
# Create Storage Bucket - Variables #
#####################################

variable "bucket-name" {
  type        = string
  description = "The name of the Google Storage Bucket to create"
}

variable "storage-class" {
  type        = string
  description = "The storage class of the Google Storage Bucket to create"
}
