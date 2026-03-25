# Jailrun Hub

A curated collection of Ansible playbooks for [Jailrun](https://github.com/hyphatech/jailrun), ready to provision your jails and VM bases.

## Jail Playbooks

### Databases

| Playbook | Description |
| --- | --- |
| [`mariadb-11`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/mariadb/11.8) | [MariaDB](https://mariadb.org/) 11 — database server. |
| [`mysql-8`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/mysql/8) | [MySQL](https://www.mysql.com/) 8 — database server. |
| [`postgres-16`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/postgres/16) | [PostgreSQL](https://www.postgresql.org/) 16 — database server. |
| [`redis`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/redis/rolling) | [Redis](https://github.com/redis/redis) — in-memory data store. |

### Media

| Playbook | Description |
| --- | --- |
| [`ffmpeg-7`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/ffmpeg/7) | [FFmpeg](https://ffmpeg.org/) — multimedia framework (encode/decode/transcode). |
| [`imagor`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/imagor/1.6) | [Imagor](https://github.com/cshum/imagor) — image processing service. |

### Monitoring

| Playbook | Description |
| --- | --- |
| [`influxdb`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/influxdb/rolling) | [InfluxDB](https://www.influxdata.com/) — time-series database. |
| [`prometheus`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/prometheus/rolling) | [Prometheus](https://prometheus.io/) — monitoring system and time-series database. |

### P2P

| Playbook | Description |
| --- | --- |
| [`i2pd`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/i2pd/rolling) | [I2PD](https://i2pd.website/) — I2P router for anonymous network access. |
| [`ipfs`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/ipfs/0.40) | [IPFS (Kubo)](https://ipfs.tech/) — distributed content-addressed storage and peer-to-peer file distribution. |
| [`continuwuity`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/continuwuity/0.5.5) | [Continuwuity](https://continuwuity.org/) — a fast, community-driven Matrix homeserver written in Rust. |

### Web

| Playbook | Description |
| --- | --- |
| [`hugo`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/hugo/0.157) | [Hugo](https://gohugo.io/) — fast and flexible static site generator. |
| [`hugoplate`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/hugoplate/0.157) | [Hugoplate](https://github.com/zeon-studio/hugoplate) — popular Hugo starter kit. |
| [`nginx`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/nginx/rolling) | [Nginx](https://nginx.org/) — web server with a basic default config. |
| [`haproxy`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/haproxy/rolling) | [HAProxy](https://www.haproxy.org/) — reliable, high-performance proxy for TCP and HTTP services. |

### Development

| Playbook | Description |
| --- | --- |
| [`astronvim`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/astronvim/rolling) | [AstroNvim](https://astronvim.com/) — aesthetically pleasing and feature-rich Neovim configuration. |
| [`gitea`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/gitea/1.25) | [Gitea](https://about.gitea.com/) — self-hosted Git forge with web UI. |
| [`clojure`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/clojure/rolling) | [Clojure](https://clojure.org/) — dynamic, functional dialect of Lisp on the JVM. |
| [`ocaml`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/ocaml/rolling) | [OCaml](https://ocaml.org/) — general-purpose functional language with a powerful type system. |

### Security

| Playbook | Description |
| --- | --- |
| [`vault`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/vault/1.21) | [Vault](https://www.vaultproject.io/) — secrets management and encryption as a service. |

## Base Playbooks

### Desktop

| Playbook | Description |
| --- | --- |
| [`kde`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/kde/rolling) | [Plasma (KDE)](https://kde.org/plasma-desktop/) — desktop environment (KDE project). |
| [`xfce`](https://github.com/hyphatech/jailrun-hub/tree/main/playbooks/xfce/rolling) | [XFCE](https://www.xfce.org/) — lightweight desktop environment. |

## Layout

Playbooks are versioned and stored under:

- `playbooks/<name>/<version>/playbook.yml`
- `playbooks/<name>/<version>/README.md`

Examples:

- `playbooks/nginx/rolling/playbook.yml`
- `playbooks/postgres/16/playbook.yml`

## Contributing

- Add new playbooks under `playbooks/<name>/<version>/`.
- Keep a `README.md` next to each `playbook.yml` with relevant UCL example.
