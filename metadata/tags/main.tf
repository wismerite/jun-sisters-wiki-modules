# DO tags
# largely used for identification and firewall rules
terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

resource "digitalocean_tag" "k8s_cluster" {
  name = "k8s_cluster"
}

resource "digitalocean_tag" "db_cluster" {
  name = "db_cluster"
}