# HAProxy (rolling)

Reliable, high-performance proxy for TCP and HTTP services.

## jrun example

```ucl
jail "remote-httpserver" {
  setup {
    haproxy {
      type = "ansible";
      url  = "hub://haproxy/rolling";
      vars {
        HAPROXY_TCP_MAPPINGS = "
          8080 httpserver.18-pulse-lilac.jrun 8080
        ";
      }
    }
  }
  forward {
    haproxy { host = 9000; jail = 8080; }
  }
}
```

## Variables

| Variable                 | Description                                                           | Default                       |
|--------------------------|-----------------------------------------------------------------------|-------------------------------|
| `HAPROXY_PACKAGE`        | HAProxy package name to install via `pkg`                             | `haproxy`                     |
| `HAPROXY_CONF_DIR`       | Directory containing `haproxy.conf`                                   | `/usr/local/etc`              |
| `HAPROXY_CONF_PATH`      | Full path to HAProxy config file                                      | `/usr/local/etc/haproxy.conf` |
| `HAPROXY_TCP_MAPPINGS`   | Multiline TCP proxy mappings as `LISTEN_PORT REMOTE_HOST REMOTE_PORT` | `""`                          |
| `HAPROXY_GLOBAL_EXTRA`   | Extra lines appended to the `global` section                          | `""`                          |
| `HAPROXY_DEFAULTS_EXTRA` | Extra lines appended to the `defaults` section                        | `""`                          |

## TCP mappings

`HAPROXY_TCP_MAPPINGS` accepts one mapping per line:

```text
8080 httpserver.18-pulse-lilac.jrun 8080
3306 mariadb.example.jrun 3306
```
