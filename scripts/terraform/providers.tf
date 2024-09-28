provider "google" {
  credentials = file("../../credentials.json")
  project     = var.gcp_project_id
  region      = var.location
}

provider "kubernetes" {
  host                   = google_container_cluster.task10.endpoint
  client_certificate     = base64decode(google_container_cluster.task10.master_auth[0].client_certificate)
  client_key             = base64decode(google_container_cluster.task10.master_auth[0].client_key)
  cluster_ca_certificate = base64decode(google_container_cluster.task10.master_auth[0].cluster_ca_certificate)
}
