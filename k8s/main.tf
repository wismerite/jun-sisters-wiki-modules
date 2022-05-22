terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

data "digitalocean_kubernetes_versions" "k8s_version" {}

resource "digitalocean_kubernetes_cluster" "k8s_cluster" {
  name   = var.k8s_name
  region = var.k8s_region
  auto_upgrade = true
  version      = data.digitalocean_kubernetes_versions.k8s_version.latest_version
  vpc_uuid = var.k8s_vpc

  maintenance_policy {
    start_time  = "04:00"
    day         = "sunday"
  }

  node_pool {
    name       = var.k8s_name
    size       = var.k8s_node_size
    node_count = var.k8s_node_count
    tags = var.k8s_tags
  }
}