# Nginx (rolling)

HTTP reverse proxy / web server.

## jrun example

```ucl
jail "hypha-nginx" {
  setup {
    nginx {
      type = "ansible";
      url  = "hub://nginx/rolling";
      vars { NGINX_LISTEN_PORT = "88"; }
    }
  }

  forward {
    nginx { host = 8888; jail = 88; }
  }
}
```
## Variables

| Variable            | Description                              | Default                           |
|---------------------|------------------------------------------|-----------------------------------|
| `PACKAGES`          | Additional packages to install via `pkg` | `[]`                              |
| `NGINX_LISTEN_PORT` | Nginx listen port                        | `80`                              |
| `NGINX_SERVER_NAME` | `server_name`                            | `_`                               |
| `NGINX_ROOT`        | Document root                            | `/usr/local/www/nginx`            |
| `NGINX_ACCESS_LOG`  | Access log path                          | `/var/log/nginx/access.log`       |
| `NGINX_ERROR_LOG`   | Error log path                           | `/var/log/nginx/error.log`        |
| `NGINX_CONF_DIR`    | Nginx config directory                   | `/usr/local/etc/nginx`            |
| `NGINX_CONF_FILE`   | Nginx config file name                   | `nginx.conf`                      |
| `NGINX_CONF_PATH`   | Full Nginx config path                   | `/usr/local/etc/nginx/nginx.conf` |
