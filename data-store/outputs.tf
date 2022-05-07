output "pg_cluster_id" {
    description = "id of the pg cluster"
    value = digitalocean_database_cluster.jun_sisters_wiki_db_cluster.id
}

output "pg_cluster_uri" {
    description = "conn string for pge cluster, to be used for tf state"
    value = digitalocean_database_cluster.jun_sisters_wiki_db_cluster.uri
}

output "pg_cluster_private_uri" {
    description = "conn string for pge cluster, to be used for tf state"
    value = digitalocean_database_cluster.jun_sisters_wiki_db_cluster.private_uri
}