# Vault (1.20)

Secrets management, encryption as a service, and privileged access management.

## jrun example

```ucl
jail "hypha-vault" {
  setup {
    vault {
      type = "ansible";
      url  = "hub://vault/1.20";
    }
  }
  forward {
    api { host = 8200; jail = 8200; }
  }
  exec {
    build {
      cmd = "doas -u vault /usr/local/bin/vault server -config=/usr/local/etc/vault/vault.hcl";
    }
  }
}
```

## Variables

| Variable              | Description                              | Default                    |
|-----------------------|------------------------------------------|----------------------------|
| `PACKAGES`            | Additional packages to install via `pkg` | `[]`                       |
| `VAULT_VERSION`       | Vault version to build from source       | `"1.20.4"`                 |
| `VAULT_SRC_DIR`       | Source checkout directory                | `"/usr/local/src/vault"`   |
| `VAULT_RUN_USER`      | System user used to run Vault            | `"vault"`                  |
| `VAULT_RUN_GROUP`     | System group used to run Vault           | `"vault"`                  |
| `VAULT_CONF_DIR`      | Vault config directory                   | `"/usr/local/etc/vault"`   |
| `VAULT_CONF_FILE`     | Main config filename                     | `"vault.hcl"`              |
| `VAULT_STATE_DIR`     | Base state directory                     | `"/var/db/vault"`          |
| `VAULT_DATA_DIR`      | Storage data directory                   | `"/var/db/vault/data"`     |
| `VAULT_LOG_DIR`       | Log directory                            | `"/var/log/vault"`         |
| `VAULT_API_ADDR`      | Vault API advertise address              | `"http://127.0.0.1:8200"`  |
| `VAULT_CLUSTER_ADDR`  | Vault cluster advertise address          | `"http://127.0.0.1:8201"`  |
| `VAULT_HTTP_ADDR`     | HTTP listen address                      | `"127.0.0.1"`              |
| `VAULT_HTTP_PORT`     | HTTP listen port                         | `8200`                     |

## First run

Vault must be initialised once after first start:

```sh
vault operator init
```

Save the 5 unseal keys and root token — they are shown only once. Then unseal:

```sh
vault operator unseal  # run 3 times with 3 different keys
```

Vault must be unsealed again after every restart.

## Notes

- Uses `file` storage backend backed by SQLite — suitable for single-node and personal use.
- Vault runs via `doas -u vault`. It does not run as root.
