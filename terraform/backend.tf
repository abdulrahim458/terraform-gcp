terraform {
  required_version = ">= 0.12"
  backend "gcs" {
    bucket  = "learning-terraform"
    prefix = "terraform-state"
  }
}
