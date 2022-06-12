resource "helm_release" "cert-manager" {
  name       = "jetstack"
  repository = "https://charts.jetstack.io"
  chart      = "cert-manager"

  namespace        = "cert-manager"
  create_namespace = true

  set {
    name  = "installCRDs"
    value = "true"
  }

}

# resource "kubernetes_manifest" "clusterissuer_letsencrypt" {
#   manifest = {
#     "apiVersion" = "cert-manager.io/v1"
#     "kind" = "ClusterIssuer"
#     "metadata" = {
#       "name" = "${var.service_name}-ci"
#     }
#     "spec" = {
#       "acme" = {
#         "email" = var.cert_email
#         "privateKeySecretRef" = {
#           "name" = "${var.service_name}-tls"
#         }
#         "server" = "https://acme-v02.api.letsencrypt.org/directory"
#         "solvers" = [
#           {
#             "http01" = {
#               "ingress" = {
#                 "class" = "nginx"
#               }
#             }
#           },
#         ]
#       }
#     }
#   }
# }