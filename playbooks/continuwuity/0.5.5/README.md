# Continuwuity (0.5.5)

Self-hosted Matrix homeserver built from source (Conduwuit fork).

## jrun example

```ucl
jail "hypha-continuwuity" {
  setup {
    continuwuity {
      type = "ansible";
      url  = "hub://continuwuity/0.5.5";
    }
  }
  forward {
    http { host = 6167; jail = 6167; }
    federation { host = 8448; jail = 8448; }
  }
  exec {
    build {
      cmd = "conduwuit --config /usr/local/etc/continuwuity/conduwuit.toml";
    }
  }
}
```

## Variables

| Variable                          | Description                               | Default                                                        |
|-----------------------------------|-------------------------------------------|----------------------------------------------------------------|
| `PACKAGES`                        | Additional packages to install via `pkg`  | `[]`                                                           |
| `CONTINUWUITY_VERSION`            | Version to build from source              | `"0.5.5"`                                                      |
| `CONTINUWUITY_REPO`               | Git repository URL                        | `"https://forgejo.ellis.link/continuwuation/continuwuity.git"` |
| `CONTINUWUITY_SRC_DIR`            | Source checkout directory                 | `"/usr/local/src/continuwuity"`                                |
| `CONTINUWUITY_CONF_DIR`           | Configuration directory                   | `"/usr/local/etc/continuwuity"`                                |
| `CONTINUWUITY_CONF_FILE`          | Configuration filename                    | `"conduwuit.toml"`                                             |
| `CONTINUWUITY_CONF_PATH`          | Full path to configuration file           | `"/usr/local/etc/continuwuity/conduwuit.toml"`                 |
| `CONTINUWUITY_STATE_DIR`          | Base state directory                      | `"/var/db/continuwuity"`                                       |
| `CONTINUWUITY_MEDIA_DIR`          | Media storage directory                   | `"/var/db/continuwuity/media"`                                 |
| `CONTINUWUITY_LOG_DIR`            | Log directory                             | `"/var/log/continuwuity"`                                      |
| `CONTINUWUITY_SERVER_NAME`        | Matrix server name                        | `"matrix.jrun"`                                                |
| `CONTINUWUITY_HTTP_ADDR`          | HTTP bind address                         | `"0.0.0.0"`                                                    |
| `CONTINUWUITY_HTTP_PORT`          | HTTP port                                 | `6167`                                                         |
| `CONTINUWUITY_FEDERATION_PORT`    | Federation port                           | `8448`                                                         |
| `CONTINUWUITY_MAX_REQUEST_SIZE`   | Maximum request size (bytes)              | `20971520`                                                     |
| `CONTINUWUITY_ALLOW_REGISTRATION` | Allow new user registration               | `"true"`                                                       |
| `CONTINUWUITY_ALLOW_FEDERATION`   | Enable federation                         | `"true"`                                                       |
| `CONTINUWUITY_ADMIN_USER`         | Initial admin username                    | `"admin"`                                                      |
| `CONTINUWUITY_ADMIN_PASSWORD`     | Initial admin password                    | `"admin"`                                                      |

## Notes

- Change `CONTINUWUITY_ADMIN_PASSWORD` before production use.
- The `--config` path used when starting Conduwuit must match `CONTINUWUITY_CONF_PATH`. By default this is `--config /usr/local/etc/continuwuity/conduwuit.toml`.
