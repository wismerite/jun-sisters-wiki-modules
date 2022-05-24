output "id" {
    description = "id of k8s cluster"
    value = digitalocean_kubernetes_cluster.k8s_cluster.id
}

output "urn" {
    description = "urn of k8s cluster"
    value = digitalocean_kubernetes_cluster.k8s_cluster.urn
}

output "nodes" {
    description = "id of k8s cluster"
    value = digitalocean_kubernetes_cluster.k8s_cluster.node_pool[0].nodes
}

output "endpoint" {
    description = "config from kube cluster for kube provider"
    value = data.digitalocean_kubernetes_cluster.k8s_cluster_data.endpoint
    sensitive = true
}

output "token" {
    description = "config from kube cluster for kube provider"
    value = data.digitalocean_kubernetes_cluster.k8s_cluster_data.kube_config[0].token
    sensitive = true
}

output "ca_certificate" {
    description = "config from kube cluster for kube provider"
    value = data.digitalocean_kubernetes_cluster.k8s_cluster_data.kube_config[0].cluster_ca_certificate
}