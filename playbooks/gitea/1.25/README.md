# Gitea (1.25)

Self-hosted Git forge with web UI.

## jrun example

```ucl
jail "hypha-gitea" {
  setup {
    gitea {
      type = "ansible";
      url  = "hub://gitea/1.25";
    }
  }
  forward {
    http { host = 3000; jail = 3000; }
  }
  exec {
    build {
      cmd = "doas -u git gitea web --config /usr/local/etc/gitea/conf/app.ini";
      dir = "/var/db/gitea";
    }
  }
}
```

## Variables

| Variable               | Description                                       | Default                              |
|------------------------|---------------------------------------------------|--------------------------------------|
| `PACKAGES`             | Additional packages to install via `pkg`          | `[]`                                 |
| `GITEA_VERSION`        | Gitea version to build from source                | `"1.25.4"`                           |
| `GITEA_SRC_DIR`        | Source checkout directory                         | `"/usr/local/src/gitea"`             |
| `GITEA_RUN_USER`       | System user used to run Gitea                     | `"git"`                              |
| `GITEA_RUN_GROUP`      | System group used to run Gitea                    | `"git"`                              |
| `GITEA_CONF_DIR`       | Gitea config directory                            | `"/usr/local/etc/gitea/conf"`        |
| `GITEA_CONF_FILE`      | Main config filename                              | `"app.ini"`                          |
| `GITEA_STATE_DIR`      | Base state directory                              | `"/var/db/gitea"`                    |
| `GITEA_WORK_PATH`      | Gitea work path                                   | `"/var/db/gitea"`                    |
| `GITEA_APP_DATA_PATH`  | Application data directory                        | `"/var/db/gitea/data"`               |
| `GITEA_REPO_DIR`       | Repository storage directory                      | `"/var/db/gitea/gitea-repositories"` |
| `GITEA_GIT_HOME_PATH`  | Home directory for the `git` user inside app data | `"/var/db/gitea/data/home"`          |
| `GITEA_DB_PATH`        | SQLite database path                              | `"/var/db/gitea/data/gitea.db"`      |
| `GITEA_LOG_DIR`        | Log directory                                     | `"/var/log/gitea"`                   |
| `GITEA_HTTP_ADDR`      | HTTP listen address                               | `"127.0.0.1"`                        |
| `GITEA_HTTP_PORT`      | HTTP listen port                                  | `3000`                               |
| `GITEA_DOMAIN`         | Gitea server domain                               | `"localhost"`                        |
| `GITEA_ROOT_URL`       | Public root URL                                   | `"http://localhost:3000/"`           |
| `GITEA_SSH_DOMAIN`     | SSH domain shown in clone URLs                    | `"localhost"`                        |
| `GITEA_SSH_PORT`       | SSH port shown in clone URLs                      | `22`                                 |
| `GITEA_SECRET_KEY`     | Secret key for internal encryption/signing        | `"replace-with-random-secret-1"`     |
| `GITEA_INTERNAL_TOKEN` | Internal API token                                | `"replace-with-random-secret-2"`     |
| `GITEA_JWT_SECRET`     | JWT signing secret                                | `"replace-with-random-secret-3"`     |

## Notes

- The playbook uses SQLite by default.
- Generate real random values for `GITEA_SECRET_KEY`, `GITEA_INTERNAL_TOKEN`, and `GITEA_JWT_SECRET` before production use.
-	Run Gitea via `doas -u git`. Gitea does not run as root.
- The `--config` path used when starting Gitea must match `GITEA_CONF_PATH`. By default this is `--config /usr/local/etc/gitea/conf/app.ini`.
