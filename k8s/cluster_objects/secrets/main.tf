resource "kubernetes_secret_v1" "example" {
  metadata {
    name = var.db_pw_secret_name
  }
  data = {
    postgresql-password = var.db_pw
  }
  type = "Opaque"
}