# Redis (latest)

In-memory key/value store (cache, queues, ephemeral data).

## jrun example

```ucl
jail "hypha-redis" {
  setup {
    redis {
      type = "ansible";
      url  = "https://github.com/hyphatech/jailrun-hub/blob/main/playbooks/redis/latest/playbook.yml";
    }
  }
  forward {
    redis { host = 7379; jail = 6379; }
  }
}
```

## Variables

| Variable               | Description              | Default     |
|-----------------------|--------------------------|-------------|
| `REDIS_BIND_ADDRESS`   | Value for `bind`         | `0.0.0.0`   |
| `REDIS_PROTECTED_MODE` | Value for `protected-mode` | `no`      |
