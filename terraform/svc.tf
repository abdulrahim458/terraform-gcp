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


resource "google_service_account_iam_member" "terraform-account-iam" {
    for_each = toset([
    "roles/cloudbuild.admin",
    "roles/compute.Admin",
    "roles/compute.instanceAdmin",
    "roles/compute.networkAdmin",
    "roles/storage.admin",
    "roles/compute.loadBalancerAdmin",
    "roles/iam.service.AccountUser",
  ])
  service_account_id = google_service_account.abdul.name
  role               = each.key
  member = "serviceAccount:${google_service_account.abdul.email}"
}



resource "google_service_account_iam_member" "webserver-start-iam" {
  service_account_id = google_service_account.abdul.name
  role               = "roles/compute.instances.start"
  member = "user:abdulrahim458@gmail.com"
}

output "gcp_bucket" {
  value = google_storage_bucket.tf-bucket
}



output "gcp_serviceaccount" {
  value = google_service_account.abdul
}
