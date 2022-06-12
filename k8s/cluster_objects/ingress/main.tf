resource "kubernetes_ingress_v1" "example_ingress" {
  metadata {
    name = "${var.service_name}-ingress"
    annotations = {
      cert-manager.io/cluster-issuer = "jun-sisters-wiki-ci"
    }
  }

  spec {
    ingress_class_name = "nginx"
    tls {
      hosts = [
        "wiki.jun-sisters.gay"
      ]
      secret_name = "${var.service_name}-cert"
    }
    rule {
      http {
        path {
          path = "/"
          path_type = "Prefix"
          backend {
            service {
              name = var.service_name
              port {
                number = 80
              }
            }
          }

        }
      }
    }

    # tls {
    #   secret_name = "tls-secret"
    # }
  }
}