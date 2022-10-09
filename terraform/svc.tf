################################
# Create Storage Bucket - Main #
################################

# Create a GCS Bucket
resource "google_storage_bucket" "tf-bucket" {
  project       = var.gcp_project
  name          = var.bucket-name
  location      = var.gcp_region_1
  force_destroy = true
  storage_class = var.storage-class
  versioning {
    enabled = true
  }
}


# Create GCP Service Account 

resource "google_service_account" "abdul" {
  account_id   = "abdul-sa"
  display_name = "Terraform Account"
}

# Create GCP Service Account Keys

resource "google_service_account_key" "mykey" {
  service_account_id = google_service_account.abdul.name
  public_key_type    = "TYPE_X509_PEM_FILE"
}

output "gcp_bucket" {
  value = google_storage_bucket.tf-bucket
}



output "gcp_serviceaccount" {
  value = google_service_account.abdul
}
