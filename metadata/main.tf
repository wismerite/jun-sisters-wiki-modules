# DO "project"
resource "digitalocean_project" "jun_sisters_wiki" {
  name        = var.project_name
  purpose     = "jswiki app"
  environment = var.project_env
  resources = var.project_resources
}

# DO tags
resource "digitalocean_tag" "k8s_cluster" {
  name = "k8s_cluster"
}

resource "digitalocean_tag" "db_cluster" {
  name = "db_cluster"
}