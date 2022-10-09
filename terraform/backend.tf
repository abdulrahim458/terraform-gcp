terraform {
  required_version = ">= 0.12"
  backend "gcs" {
    bucket  = "tfstate-demoterraform"
    prefix = "terraform-abdul"
  }
}
