# Application Definition 
app_name        = "sapient" #do NOT enter any spaces
app_environment = "develop" # Dev, Test, Prod, etc
app_domain      = "sapient-webserver.com"
#app_project     = "sapient"
app_node_count  = 2

# GCP Settings
gcp_project = "internal-interview-candidates"
gcp_region_1  = "europe-west1"
gcp_zone_1    = "europe-west1-b"
gcp_auth_file = "auth/sapient-tfadmin.json"

# GCP Netwok
private_subnet_cidr_1  = "10.10.1.0/24"

# Bucket
bucket-name   = "interview-abdul" 
storage-class = "REGIONAL"

