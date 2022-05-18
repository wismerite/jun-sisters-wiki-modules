output "k8s_cluster_tag" {
    description = "tag to identify things used for k8s"
    value = digitalocean_tag.k8s_cluster.name
}

output "pg_cluster_tag" {
    description = "tag to identify things used for k8s"
    value = digitalocean_tag.db_cluster.name
}