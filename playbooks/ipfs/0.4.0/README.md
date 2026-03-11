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

| Variable          | Default               | Description                              |
|-------------------|-----------------------|------------------------------------------|
| `PACKAGES`        | `[]`                  | Additional packages to install via `pkg` |
| `KUBO_VERSION`    | `0.40.0`              | Kubo version to build                    |
| `IPFS_PATH`       | `/var/db/ipfs/.ipfs`  | IPFS repository path                     |
