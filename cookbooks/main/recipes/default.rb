node.set['platform'] = 'ubuntu'

# sudo
node.set["authorization"]["sudo"] = {
    users: ["vagrant"],
    passwordless: true
}

# Mysql
node.set['mysql'] = {
    server_root_password: '',
    server_repl_password: '',
    server_debian_password: '',
    allow_remote_root: true,
    bind_address: '*',
    client: {
        packages: ['libmysqlclient-dev']
    }
}

# java
node.set['java'] = {
    install_flavor: "oracle",
    jdk_version: 6,
    oracle: {
        accept_oracle_download_terms: true
    }
}
