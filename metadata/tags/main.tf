# DO tags
# largely used for identification and firewall rules
provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_tag" "k8s_cluster" {
  name = "k8s_cluster"
}

resource "digitalocean_tag" "db_cluster" {
  name = "db_cluster"
}