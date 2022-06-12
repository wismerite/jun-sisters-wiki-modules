output "id" {
    description = "id of the pg cluster"
    value = digitalocean_database_cluster.jun_sisters_wiki_db_cluster.id
}

output "urn" {
    description = "urn of the pg cluster"
    value = digitalocean_database_cluster.jun_sisters_wiki_db_cluster.urn
}

output "private_host" {
    description = "conn string for pge cluster, to be used for tf state"
    value = digitalocean_database_cluster.jun_sisters_wiki_db_cluster.private_host
    sensitive = true
}

output "port" {
    description = "db cluster port"
    value = digitalocean_database_cluster.jun_sisters_wiki_db_cluster.port
}

output "db" {
    description = "name of the db for the wiki"
    value = digitalocean_database_db.jun_sisters_wiki_db.name
}

output "username" {
    description = "username for the db user for the wiki"
    value = digitalocean_database_user.jun_sisters_wiki_db_user.name
}

output "password" {
    description = "password for the db user for the wiki"
    value = digitalocean_database_user.jun_sisters_wiki_db_user.password
    sensitive = true
}

output "ca_certificate" {
    description = "ca cert for ssl connections to the db"
    value = data.digitalocean_database_ca.ca.certificate
}

