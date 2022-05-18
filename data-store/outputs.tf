output "id" {
    description = "id of the pg cluster"
    value = digitalocean_database_cluster.jun_sisters_wiki_db_cluster.id
}

output "urn" {
    description = "urn of the pg cluster"
    value = digitalocean_database_cluster.jun_sisters_wiki_db_cluster.urn
}


output "uri" {
    description = "conn string for pge cluster, to be used for tf state"
    value = digitalocean_database_cluster.jun_sisters_wiki_db_cluster.uri
}

output "private_uri" {
    description = "conn string for pge cluster, to be used for tf state"
    value = digitalocean_database_cluster.jun_sisters_wiki_db_cluster.private_uri
}