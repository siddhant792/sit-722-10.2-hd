resource "google_container_cluster" "task10" {
  name     = var.aks_name
  location = var.location

  node_config {
    machine_type = "e2-medium"
  }

  node_pool {
    name       = "default"
    node_count = 2
  }

  ip_allocation_policy {}
}

output "kubernetes_cluster_name" {
  value = google_container_cluster.task10.name
}
