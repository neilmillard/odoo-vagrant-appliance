node default {
    class {'odoo::globals':
        version => '8.0',
    }->
    class {'odoo::server': }

    exec {'apt-update':
        command => "/usr/bin/apt-get update"
    }

    Exec["apt-update"] -> Package <| |>

    class { 'nginx': }

    nginx::resource::upstream {'odoo_server':
        ensure  => present,
        members => [
            '127.0.0.1:8069',
        ]
    }

    nginx::resource::vhost { 'erp.localhost.com':
        proxy => 'http://odoo_server',
    }
}

