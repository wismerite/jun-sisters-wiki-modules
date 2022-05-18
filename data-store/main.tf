terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

resource "digitalocean_database_cluster" "jun_sisters_wiki_db_cluster" {
  name       = var.pg_name
  engine     = "pg"
  version    = "11"
  size       = var.pg_node_size
  region     = var.pg_region
  node_count = var.pg_node_count
  private_network_uuid = var.pg_vpc_id
  tags = var.pg_tags
}

resource "digitalocean_database_db" "jun_sisters_wiki_db" {
  cluster_id = digitalocean_database_cluster.jun_sisters_wiki_db_cluster.id
  name       = var.pg_wiki_db_name
}

resource "digitalocean_database_firewall" "jun_sisters_wiki_db_fw" {
  cluster_id = digitalocean_database_cluster.jun_sisters_wiki_db_cluster.id

  rule {
    type  = "k8s"
    value = var.k8s_cluster_id
  }
}