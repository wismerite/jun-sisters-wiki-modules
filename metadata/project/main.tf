# DO "project"
resource "digitalocean_project" "jun_sisters_wiki" {
  name        = var.project_name
  purpose     = "jswiki app"
  environment = var.project_env
  resources = var.project_resources
}