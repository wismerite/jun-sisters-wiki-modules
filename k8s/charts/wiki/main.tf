resource "helm_release" "jswiki" {
    name       = "requarks"
    repository = "https://charts.js.wiki"
    chart      = "wiki"

    lint = true

    set {
        type = "string"
        name = "nameOverride"
        value = var.service_name
    }

    set {
        type = "string"
        name = "fullnameOverride"
        value = var.service_name
    }

    set {
        type = "string"
        name = "postgresql.ssl"
        value = true
    }

    set {
        name = "postgresql.enabled"
        value = false
    }

    # postgresql.postgresqlHost is private connection string to db cluster
    set {
        type = "string"
        name = "postgresql.postgresqlHost"
        value = var.db_private_uri
    }

    # postgressql.postgresqlPort port for db cluster
    set {
        type = "string"
        name = "postgresql.postgresqlPort"
        value = var.db_port
    }

    # postgresql.postgresqlDatabase db for jswiki app
    set {
        type = "string"
        name = "postgresql.postgresqlDatabase"
        value = var.db
    }

    # postgresql.postgresqlUser db user for jswiki app
    set {
        type = "string"
        name = "postgresql.postgresqlUser"
        value = var.db_username
    }

    # postgresql.existingSecret is where the db password for the db user lives
    set {
        type = "string"
        name = "postgresql.existingSecret"
        value = var.db_password_secret
    }

    # DO's ca cert for db connects
    set {
        type = "string"
        name = "postgresql.ca"
        value = var.db_ca
    }

    # jswiki's ingress is weird and hard to configure/possibly broken 
    set {
        type = "string"
        name = "ingress.enabled"
        value = false
    }
}

