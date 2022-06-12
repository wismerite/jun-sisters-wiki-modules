resource "helm_release" "nginx" {
    name       = "ingress-nginx"
    repository = "https://kubernetes.github.io/ingress-nginx"
    chart      = "ingress-nginx"
    # this version is fairly arbitrary, it's just what was in the 
    #   example ella looked at
    version    = "4.0.13"

    lint = true

    values = [
        "${file("values.yaml")}"
    ]

    set {
        name  = "resources.requests.cpu"
        value = var.lb_cpu
    }

    set {
        name  = "resources.requests.memory"
        value = var.lb_memory
    }
}