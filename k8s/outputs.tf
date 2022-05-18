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
    value = digitalocean_kubernetes_cluster.k8s_cluster.node_pool.nodes
}