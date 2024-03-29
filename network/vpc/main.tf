# VPC
terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

resource "digitalocean_vpc" "jun_sisters_wiki_network" {
  description = "vpc to contain resources for jun sisters wiki hosting"
  name     = var.vpc_name
  region   = var.vpc_region
  ip_range = var.vpc_ip_range
}