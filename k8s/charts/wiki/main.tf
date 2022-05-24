resource "helm_release" "jswiki" {
    name       = "requarks"
    repository = "https://charts.js.wiki"
    chart      = "wiki"

    lint = true

    values = [
        "${file("values.yaml")}"
    ]

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

    # postgresql.postgresqlPassword is the db password for the db user
    set {
        type = "string"
        name = "postgresql.postgresqlPassword"
        value = var.db_password
    }

    # DO's ca cert for db connects
    set {
        type = "string"
        name = "postgresql.ca"
        value = var.db_ca
    }
}
