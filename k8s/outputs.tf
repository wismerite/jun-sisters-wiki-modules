output "k8s_id" {
    description = "id of k8s cluster"
    value = digitalocean_kubernetes_cluster.k8s_cluster.id
}