# Nginx (latest)

HTTP reverse proxy / web server.

## jrun example

```ucl
jail "hypha-nginx" {
  setup {
    nginx {
      type = "ansible";
      url  = "https://github.com/hyphatech/jailrun-hub/blob/main/playbooks/nginx/latest/playbook.yml";
      vars { NGINX_LISTEN_PORT = "88"; }
    }
  }

  forward {
    nginx { host = 8888; jail = 88; }
  }
}
```

## Variables

| Variable            | Description        | Default                     |
|---------------------|--------------------|-----------------------------|
| `NGINX_LISTEN_PORT` | Nginx listen port  | `80`                        |
| `NGINX_SERVER_NAME` | `server_name`      | `_`                         |
| `NGINX_ROOT`        | Document root      | `/usr/local/www/nginx`      |
| `NGINX_ACCESS_LOG`  | Access log path    | `/var/log/nginx/access.log` |
| `NGINX_ERROR_LOG`   | Error log path     | `/var/log/nginx/error.log`  |
