# InfluxDB (rolling)

Time-series database for metrics, events, and observability data.

## jrun example

```ucl
jail "hypha-influxdb" {
  setup {
    influxdb {
      type = "ansible";
      url  = "hub://influxdb/rolling";
    }
  }
  forward {
    influxdb { host = 9086; jail = 8086; }
  }
}
```

## Variables

| Variable                    | Description                                                  | Default        |
|-----------------------------|--------------------------------------------------------------|----------------|
| `PACKAGES`                  | Additional packages to install via `pkg`                     | `[]`           |
| `INFLUXD_HTTP_BIND_ADDRESS` | Value for `[http].bind-address`                              | `0.0.0.0:8086` |
| `INFLUXD_REPORTING`         | Enable telemetry reporting (inverts `reporting-disabled`)    | `false`        |
