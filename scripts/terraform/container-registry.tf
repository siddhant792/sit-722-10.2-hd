resource "google_artifact_registry_repository" "task10" {
  format        = "DOCKER"
  location      = var.location
  repository_id = var.acr_name
}
