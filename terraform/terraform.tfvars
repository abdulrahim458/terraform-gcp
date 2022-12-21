# Application Definition 
app_name        = "learning" #do NOT enter any spaces
app_environment = "develop" # Dev, Test, Prod, etc
app_domain      = "learning-webserver.com"
#app_project     = "learning"
app_node_count  = 2

# GCP Settings
gcp_project = "dark-airway-363408"
gcp_region_1  = "europe-west1"
gcp_zone_1    = "europe-west1-b"
gcp_auth_file = "auth/learning-tfadmin.json"

# GCP Netwok
private_subnet_cidr_1  = "10.10.1.0/24"

# Bucket
bucket-name   = "learning-terrform" 
storage-class = "REGIONAL"

