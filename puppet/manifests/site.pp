node default {
    include odoo::server

    exec {'apt-update':
        command => "/usr/bin/apt-get update"
    }

    Exec["apt-update"] -> Package <| |>
}

