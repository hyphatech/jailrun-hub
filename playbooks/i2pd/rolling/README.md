# I2PD (rolling)

I2P router for anonymous network access.

## jrun example

```ucl
jail "hypha-i2pd" {
  setup {
    i2pd {
      type = "ansible";
      url  = "hub://i2pd/rolling";
    }
  }
  forward {
    i2pd-http-proxy { host = 4444; jail = 4444; }
    i2pd-socks      { host = 4447; jail = 4447; }
    i2pd-console    { host = 7070; jail = 7070; }
  }
}
```

## Variables

| Variable                 | Description                              | Default               |
|--------------------------|------------------------------------------|-----------------------|
| `PACKAGES`               | Additional packages to install via `pkg` | `[]`                  |
| `I2PD_HTTP_PROXY_PORT`   | HTTP proxy port                          | `4444`                |
| `I2PD_SOCKS_PROXY_PORT`  | SOCKS proxy port                         | `4447`                |
| `I2PD_WEBCONSOLE_PORT`   | Web console port                         | `7070`                |
| `I2PD_LISTEN_ADDRESS`    | Bind address for all services            | `127.0.0.1`           |
| `I2PD_DATA_DIR`          | Router data directory                    | `/var/db/i2pd`        |
| `I2PD_LOG_DIR`           | Log directory                            | `/var/log/i2pd`       |
| `I2PD_CONF_DIR`          | Config directory                         | `/usr/local/etc/i2pd` |

## Browser proxy setup

Set your browser to use **Manual proxy configuration**:

- **HTTP Proxy:** `localhost`, **Port:** `4444`
- Check **Also use this proxy for HTTPS**

This routes all browser traffic through i2pd. Only `.i2p` sites will resolve.

**Use a dedicated browser profile to keep regular browsing unaffected.**

Web console is available at `http://127.0.0.1:7070` — wait until the router shows active tunnels before testing `.i2p` sites.
