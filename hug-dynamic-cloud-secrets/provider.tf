# provider "vault" {}

# data "vault_generic_secret" "creds" {
#   path = "creds/provisioner"
#   backend = "gcp"
#   role    = "provisioner"
# }

provider "google" {
  credentials = "${file("credentials.json")}"
  project     = "${var.project}"
  region      = "${var.GCP_REGION}"
}
