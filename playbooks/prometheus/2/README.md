# Prometheus

Monitoring system and time-series database for metrics collection and alerting.

## jrun example

```ucl
jail "hypha-prometheus" {
  setup {
    prometheus {
      type = "ansible";
      url  = "hub://prometheus/latest";
    }
  }
  forward {
    prometheus { host = 9090; jail = 9090; }
  }
}
```

## Variables

| Variable                   | Description                          | Default                                                |
|----------------------------|--------------------------------------|--------------------------------------------------------|
| `PROMETHEUS_LISTEN_ADDRESS`| Web UI and API listen address        | `0.0.0.0:9090`                                         |
| `PROMETHEUS_RETENTION`     | Data retention period                | `15d`                                                  |
| `PROMETHEUS_DATA_DIR`      | Storage directory for TSDB data      | `/var/db/prometheus`                                   |
| `PROMETHEUS_CONF_DIR`      | Config directory                     | `/usr/local/etc`                                       |
| `PROMETHEUS_CONF_FILE`     | Config filename                      | `prometheus.yml`                                       |
| `PROMETHEUS_CONF_PATH`     | Full path to config file             | `{{ PROMETHEUS_CONF_DIR }}/{{ PROMETHEUS_CONF_FILE }}` |
