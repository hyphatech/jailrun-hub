# IPFS (0.40)

Kubo IPFS node providing distributed content-addressed storage and peer-to-peer file distribution.

## jrun example

``` ucl
jail "hypha-ipfs" {
  setup {
    ipfs {
      type = "ansible";
      url  = "hub://ipfs/0.40";
    }
  }
  forward {
    swarm   { host = 4001; jail = 4001; }
    gateway { host = 8080; jail = 8080; }
  }
  exec {
    ipfs {
      cmd = "ipfs daemon";
      env {
        IPFS_PATH = "/var/db/ipfs/.ipfs";
      }
    }
  }
}
```

## Variables

| Variable       | Description                              | Default              |
|----------------|------------------------------------------|----------------------|
| `PACKAGES`     | Additional packages to install via `pkg` | `[]`                 |
| `KUBO_VERSION` | Kubo version to build                    | `0.40.0`             |
| `IPFS_PATH`    | IPFS repository path                     | `/var/db/ipfs/.ipfs` |
