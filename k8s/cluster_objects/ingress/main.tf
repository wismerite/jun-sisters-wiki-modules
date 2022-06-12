resource "kubernetes_ingress_v1" "example_ingress" {
  metadata {
    name = "${var.service_name}-ingress"
  }

  spec {
    ingress_class_name = "nginx"
    rule {
      http {
        path {
          path = "/"
          pathType = "Prefix"
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