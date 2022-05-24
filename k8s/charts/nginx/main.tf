resource "helm_release" "jswiki" {
    name       = "ingress-nginx"
    repository = "https://kubernetes.github.io/ingress-nginx"
    chart      = "ingress-nginx"
    version    = "4.0.13"

    lint = true

    values = [
        "${file("values.yaml")}"
    ]

    set {
        # how many pods to spin up.  should be 1 for initial deployment, need to enable HA in jswiki config before increasing
        name  = "resources.requests.cpu"
        value = var.lb_cpu
        type = number
    }

    set {
        # how many pods to spin up.  should be 1 for initial deployment, need to enable HA in jswiki config before increasing
        name  = "resources.requests.memory"
        value = var.lb_memory
        type = number
    }
}